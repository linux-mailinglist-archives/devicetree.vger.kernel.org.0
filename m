Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7DD4688B99
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 01:16:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229915AbjBCAP6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 19:15:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbjBCAP5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 19:15:57 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7235070D7C
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 16:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675383311;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=ZZii04idi4snEs1Pp8F67oc8bCMrsdYL6FcEHVrhkW0=;
        b=GRnjx7oco8KYIEsHn480aWA6VrRFC4/uWewCyVs45SZBlIZQdhidjw3fyHSGTFe8kejLck
        AkjEIr7CZ8mO//n6c46wqzGnHc9MDMnoWLTEKApjQDFzJW4H92s3MIVT+KJWiE6O1zhlWu
        EdF55WmXlPNzwuZMl+hHKZV88G9fIJs=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-404-Rb9nL-UpPD2Yrw0BaOXt5A-1; Thu, 02 Feb 2023 19:15:10 -0500
X-MC-Unique: Rb9nL-UpPD2Yrw0BaOXt5A-1
Received: by mail-il1-f200.google.com with SMTP id c11-20020a92b74b000000b00311075338efso2306839ilm.18
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 16:15:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZZii04idi4snEs1Pp8F67oc8bCMrsdYL6FcEHVrhkW0=;
        b=Tb4oQDR1OQxD2yWwwkafFfzsFEoY9tUbXw3f9KrLY8eteBe4VQC8CGRCgGUla3treG
         zc12SH/oCj3Ae5mFGobv2Wfdo1H/V2T78jGPVg33FiaTRH4KYjbOA6gWYgQh+nso32b7
         d14ilyQX3aQlIpA3AEWNNUBzrrR76lZF3yJd/R0gs+VYOJWH2L15TQtQdsZp4Q0i8mh3
         h3K88ywUkog8HYHFPgkzzxUdlhLOwhZrOnYk8Saeu4ycfyLiWOiK1wDbS8/CL4IBdqw5
         PSumD6EtEZzRAy2rIKIA7OfA7ttSX1x4lBSD6p215vTXPd4Gsu4lIqGUlrbaOHODn+7S
         iZew==
X-Gm-Message-State: AO0yUKXQXWA/Uqy/rqnFRmya1363vgA1x42xIXxSUT6eyxklw3jX//tx
        UeGrPRFHVufRHy0i+7Fwny6pE5ozd4if3VtGm6saVnzyb8WsHgcdKdHmzkT6owfDgmWX5UoOYiq
        w6iCC35wk8KYR01uTWB+dwg==
X-Received: by 2002:a05:6e02:1a46:b0:311:20f:bc77 with SMTP id u6-20020a056e021a4600b00311020fbc77mr6285769ilv.6.1675383309921;
        Thu, 02 Feb 2023 16:15:09 -0800 (PST)
X-Google-Smtp-Source: AK7set+lbPEIbkCglkbHrVZ7yC7ELtrZRYRaCyZ0+Iv+658LyqnW2+LBjhq8imActoVACDnw9RK2Jg==
X-Received: by 2002:a05:6e02:1a46:b0:311:20f:bc77 with SMTP id u6-20020a056e021a4600b00311020fbc77mr6285749ilv.6.1675383309714;
        Thu, 02 Feb 2023 16:15:09 -0800 (PST)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id w193-20020a022aca000000b003a5de29178esm371182jaw.104.2023.02.02.16.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 16:15:08 -0800 (PST)
Date:   Thu, 2 Feb 2023 19:15:07 -0500
From:   Brian Masney <bmasney@redhat.com>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [RFT PATCH 05/14] arm64: dts: qcom: sc8280xp: correct TLMM
 gpio-ranges
Message-ID: <Y9xSCwgUxHDeppz7@x1>
References: <20230201155105.282708-1-krzysztof.kozlowski@linaro.org>
 <20230201155105.282708-6-krzysztof.kozlowski@linaro.org>
 <Y9xAEoc0QXe222D0@x1>
 <25f5a750-b51c-7d7b-0d50-5b2f78de8512@linaro.org>
 <Y9xOeZjAQmQqLOa1@x1>
 <1319a973-26ae-8c11-d967-8720aaf894df@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1319a973-26ae-8c11-d967-8720aaf894df@linaro.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 03, 2023 at 01:05:35AM +0100, Konrad Dybcio wrote:
> On 3.02.2023 00:59, Brian Masney wrote:
> > For others quick reference, Konrad is talking about this line from
> > sa8540p-ride.dts:
> > 
> > 	reset-gpios = <&tlmm 228 GPIO_ACTIVE_LOW>;
> > 
> > I noticed that earlier but assumed this was one based. However, looking
> > at pinctrl-sc8280xp.c I see gpio0..gpio227 defined.
>
> + gpio229 is the reset pin for the UFS card slot

We don't have the UFS card slot on the sa8540p exposed. However, it is
available on the sa8295p.

The original DTS in upstream listed 230 pins, however pinctrl-sc8280xp.c
lists 233 pins and the two UFS pins match what we have in DTS.

static const struct pinctrl_pin_desc sc8280xp_pins[] = {
        PINCTRL_PIN(0, "GPIO_0"),
	...
	PINCTRL_PIN(227, "GPIO_227"),
	PINCTRL_PIN(228, "UFS_RESET"),
	PINCTRL_PIN(229, "UFS1_RESET"),
	PINCTRL_PIN(230, "SDC2_CLK"),
	PINCTRL_PIN(231, "SDC2_CMD"),
	PINCTRL_PIN(232, "SDC2_DATA"),

Rescind-Reviewed-by: Brian Masney <bmasney@redhat.com>

