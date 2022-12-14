Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C15064CC04
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 15:20:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238505AbiLNOUJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 09:20:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238559AbiLNOUB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 09:20:01 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E53927914
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671027556;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=VnHPF+rT+uxzFh2qnfDKhbS/mGO9WLcyE9+qRGeeSiU=;
        b=F8AqYnlSXItgbLCFduLWYUdMMKNz/nUkzTyTFyZGL2Z0q8RR41asMNjOxYl8cjQyAA8Efs
        pDr2sToNCu8PgDvbcM6yfGLPr1ABM8EROPmDZQcWooPhpdZPIoWsMdCxAkwsUgKv9Baxy4
        lpmuzxN9Y6UP8ubbGDrJNnNNelUl+sc=
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com
 [209.85.219.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-569-uoEnauYCMSi91KWu5W3Z7Q-1; Wed, 14 Dec 2022 09:19:15 -0500
X-MC-Unique: uoEnauYCMSi91KWu5W3Z7Q-1
Received: by mail-yb1-f198.google.com with SMTP id a5-20020a25af05000000b006e450a5e507so21026283ybh.22
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:19:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VnHPF+rT+uxzFh2qnfDKhbS/mGO9WLcyE9+qRGeeSiU=;
        b=OI08Oa6bmXDIcQ2VPC/aSo9Q4OxBZJh5ug78c5AKpRHxrdYnXxJ3IMhA9t9A0aZZ92
         Aij6mOtkD8gavEv6hykUKI8CWvQDwrF8XLn8aneovk6lICrCfDVEI3y9GMqnNLAoHhNI
         8Xs8Iw4JzUxSIN/pFej/FUyZKsOSpaETaFZ3B7EE1aD8LOgLQsJ54nlq2h54iKZez1Ev
         hZ4fw0A2q73p8dpkz9TzgpintQyxnevtU9c4pet+pDrUMi2tiQPkbloLBzLLSPNuLsd2
         pg65FhtHjOL1iS2Wbyas1eTrbiOer4UFwumgsXyL71n4oOqd0ULMeED2DFDVmub6r9GK
         zICg==
X-Gm-Message-State: ANoB5pnvI7Bie/9egC/9LrI2cIs5/Dsvuq7LcYthGITqSXDUNxpnZHNr
        VzJ53MqbPC32iCPVCalvebNET3maEkMHYqfrD4KV3SXfnYFOBQuJ3w71y6a/+9lP6k5TvoIMip6
        BGs3Q1KMQwmY5/1ZDkIOTNQ==
X-Received: by 2002:a05:7500:631a:b0:ea:e73c:c9d9 with SMTP id ib26-20020a057500631a00b000eae73cc9d9mr2084819gab.74.1671027554601;
        Wed, 14 Dec 2022 06:19:14 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4M8gk6ERWJLXB85lECMuXRMVYwywgQboEJDo1cIqnNM/1JlBJKJOyBlDeY+mBZzkUaJ+IFvw==
X-Received: by 2002:a05:7500:631a:b0:ea:e73c:c9d9 with SMTP id ib26-20020a057500631a00b000eae73cc9d9mr2084791gab.74.1671027554237;
        Wed, 14 Dec 2022 06:19:14 -0800 (PST)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id l24-20020ae9f018000000b006fc2b672950sm9894907qkg.37.2022.12.14.06.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 06:19:13 -0800 (PST)
Date:   Wed, 14 Dec 2022 09:19:12 -0500
From:   Brian Masney <bmasney@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        quic_shazhuss@quicinc.com, andersson@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ahalaney@redhat.com, echanude@redhat.com
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sa8540p-ride: add qup1_i2c15 and
 qup2_i2c18 nodes
Message-ID: <Y5nbYG4sJm97V2FS@x1>
References: <20221212182314.1902632-1-bmasney@redhat.com>
 <20221212182314.1902632-4-bmasney@redhat.com>
 <309b3fad-933c-6c45-5cd7-4e082da62c15@linaro.org>
 <Y5nB1epKN4nbk3ma@x1>
 <eca6f882-ad01-5b41-bb7e-552193e4a903@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eca6f882-ad01-5b41-bb7e-552193e4a903@linaro.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 01:52:17PM +0100, Krzysztof Kozlowski wrote:
> On 14/12/2022 13:30, Brian Masney wrote:
> > I triple checked that I have the QUP pins defined correctly for the 5
> > buses. I checked them against what's in the downstream kernel and I also
> > checked them against what's in upstream's
> > drivers/pinctrl/qcom/pinctrl-sc8280xp.c. This is the pin mapping that I
> 
> What's the base of this kernel? Are you sure you have d21f4b7ffc22?

I'm based on top of linux-next-20221208 with no other changes. I have
that commit.

   commit d21f4b7ffc22c009da925046b69b15af08de9d75
   Author: Douglas Anderson <dianders@chromium.org>
   Date:   Fri Oct 14 10:33:18 2022 -0700

      pinctrl: qcom: Avoid glitching lines when we first mux to output


On Wed, Dec 14, 2022 at 01:53:38PM +0100, Konrad Dybcio wrote:
> > This is the style where i2cdetect seems to be happy for all 5 buses and
> > is fast:
> > 
> >     i2c0_default: i2c0-default-state {
> >         mux-pins {
> >             pins = "gpio135", "gpio136";
> >             function = "qup0";
> >         };
> > 
> >         config-pins {
> >             pins = "gpio135", "gpio136";
> >             drive-strength = <2>;
> >             bias-pull-up;
> >         };
> >     };
> Unless you made a typo somewhere, I genuinely have no explanation for this..

I have my unpublished v2 patch set committed to my tree and a clean tree
according to git. I started with the state that I have quoted above. As I
did the various tests I described in my last email, I would do a
'git diff' just to be sure that I didn't have any typos.

I'll wait to hear from Shazad about whether or not the output that I got
from i2cdetect is supposed to be the same for those 5 buses.

Brian

