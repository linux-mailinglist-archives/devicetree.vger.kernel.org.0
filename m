Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C5C95AEEFF
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231688AbiIFPi2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:38:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231313AbiIFPiH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:38:07 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB779E2E6
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662475650;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=H7GYLFlANtPSZNiWZglHEjUXPEti/513uFdT3q/mqSQ=;
        b=GOIcvoceo78P+Z89kURhntedcb3z20T9E4LcHvxdow/or1UiiILw0hjMNOWOQhBD/2NCvc
        BFbW+wepjrwr0xTLcyDUUgqmc8ipzjbSO5RxUep+vzb9uEExdlGdikFdvMIm1nAdUyVTEJ
        h8Uth4QxW3xwci+xCJAei//dSwJmvpA=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-450-0xX8N2QhNDattuLZNmf8Sw-1; Tue, 06 Sep 2022 10:41:21 -0400
X-MC-Unique: 0xX8N2QhNDattuLZNmf8Sw-1
Received: by mail-qt1-f200.google.com with SMTP id h19-20020ac85493000000b00343408bd8e5so9192283qtq.4
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 07:41:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=H7GYLFlANtPSZNiWZglHEjUXPEti/513uFdT3q/mqSQ=;
        b=jPLa8hIp486o2MlC+8zWo7BSensPJ0ZIVYhHYoCky6z4xZaSOtR2z6D+a+VOqic3px
         XNgT46udIBgYfrBANGoG3lLGANY+DdZSHp89/kjmowC57crVFp22g2edSWf8cFslSL5a
         HFRhoTJPihC6V0YYUEc5Qf38KL6pRkEqEkNkNXsjV8FNH9xqqkOvAljNxl+jSYgs9+S0
         uWMNU7qGiTWoJcrGhXJTjzLMIt31Y8zUd57BF0N4spfZPsnKkWATHBG86vVPavJgZvtT
         y3usy+1ChpeYtwiO2djWMGbu+EjyVxrm5rcUMr+xMzSm1VmWc5T1prgaZ1BP3EzcoIXn
         UZHg==
X-Gm-Message-State: ACgBeo2+2FtyG8acIVOol7uruClTdS8ooDASjj0jZcqZdL8ZyDD6n+tZ
        xxlVbhnCLUs/Mf/x3/clzjwIbsrARtw0ZjxrQr0gE5wDvq4m9PVlldGw06WmwDvAPlSh7XlQ15d
        D/ilVnUvEMRy/ovGBt7saVg==
X-Received: by 2002:ac8:4e8b:0:b0:344:adaa:4fa8 with SMTP id 11-20020ac84e8b000000b00344adaa4fa8mr44520404qtp.559.1662475280663;
        Tue, 06 Sep 2022 07:41:20 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4d8z/pjWmk/nqx7FCjeNeKKoqDyq2Y8dRLCC2VKcr8opzS5+wYVNrlqBnq7chKsJwIGT0PmA==
X-Received: by 2002:ac8:4e8b:0:b0:344:adaa:4fa8 with SMTP id 11-20020ac84e8b000000b00344adaa4fa8mr44520372qtp.559.1662475280369;
        Tue, 06 Sep 2022 07:41:20 -0700 (PDT)
Received: from halaneylaptop ([2600:1700:1ff0:d0e0::a])
        by smtp.gmail.com with ESMTPSA id k22-20020ac84756000000b0033fc75c3469sm9347419qtp.27.2022.09.06.07.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 07:41:19 -0700 (PDT)
Date:   Tue, 6 Sep 2022 09:41:17 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        dianders@chromium.org, johan@kernel.org
Subject: Re: [PATCH 3/3] regulator: dt-bindings: qcom,rpmh: Indicate
 regulator-allow-set-load dependencies
Message-ID: <20220906144117.wyqulotg52aqru7u@halaneylaptop>
References: <20220902185148.635292-1-ahalaney@redhat.com>
 <20220902185148.635292-4-ahalaney@redhat.com>
 <de24bc67-f608-d9a0-31e7-ba291c469573@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <de24bc67-f608-d9a0-31e7-ba291c469573@linaro.org>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 05, 2022 at 06:50:02PM +0200, Krzysztof Kozlowski wrote:
> On 02/09/2022 20:51, Andrew Halaney wrote:
> > For RPMH regulators it doesn't make sense to indicate
> > regulator-allow-set-load without saying what modes you can switch to,
> > so be sure to indicate a dependency on regulator-allowed-modes.
> 
> Hmmmm.... What about other regulators?
> 

My understanding (which very well might be wrong) is that if your
regulator is allowed to change modes, and sets regulator-allow-set-load,
then you have to describe what modes you can switch to.

But if you don't allow setting modes (for example qcom_rpm-regulator.c)
and just allow yourself to set_load() directly, then you don't need it.

So there is a more general requirement that applies regulator wide, but
I'm not sure how you would apply that at a higher level. I don't see a
good way to figure out in dt-binding land what regulator ops each
binding supports.

Hope that makes sense,
Andrew

> > 
> > With this in place devicetree validation can catch issues like this:
> > 
> >     /mnt/extrassd/git/linux-next/arch/arm64/boot/dts/qcom/sm8350-hdk.dtb: pm8350-rpmh-regulators: ldo5: 'regulator-allowed-modes' is a dependency of 'regulator-allow-set-load'
> >             From schema: /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> > 
> > Suggested-by: Johan Hovold <johan@kernel.org>
> > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> 
> 
> Best regards,
> Krzysztof
> 

