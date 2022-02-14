Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8E854B5885
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 18:29:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357091AbiBNR2x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 12:28:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357084AbiBNR2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 12:28:51 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD3F49257
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 09:28:43 -0800 (PST)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C48103F1D0
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 17:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644859721;
        bh=KsqdtAFgibXHueDPOB/KCI/9BNIh532HNP/vcYwtlGo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=EaotnB1Q5yFIEvnLwgJI6YMC1Xh/XBf44S5x37IY1i39FrjwMI3ocKRYXgpsXzDPn
         XQeG7yTkx9rNDjBpnMwvwIU6G2HrNi39XUycdjD/JSBFCTst5IPjeHY/Ry+gwBGBZc
         RwWiQsNYFVkBrlQLXGclo5D5nCjOalXmlzU9Dfvxb2E/btBJHYZ04msn6Z4d5A9ODx
         oR76eU683D4HmjxudjtgqoZASkGsNv6BVhtIEWEvANTBfHOSNERhHs6/xTY7v9wpdx
         OxTVIkwxvEpikBroDqPUoIAUcU5uub6veWIqifw5oFFFt87bldKS+qOu0u7+ZZop2g
         uvEPtRY0BayWQ==
Received: by mail-wr1-f71.google.com with SMTP id e11-20020adf9bcb000000b001e316b01456so7170164wrc.21
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 09:28:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KsqdtAFgibXHueDPOB/KCI/9BNIh532HNP/vcYwtlGo=;
        b=GOyS4ZGyqn8HpQ7SUrGAUKmCVxU45ZpLvXD3ZMmHjOMK+zOaM0AxrYbPjZU4yfk6nH
         /PGTePytHvEQLmrRW9rUvlt/feGi1kIV2uopvudDFO25iJ+61w+KmDIxHHioeBac/HOl
         PYphmrb+n1HECKvsz1gdMyoFnjJW2cPCeIf8p9UnXKaiPnLLH35M3UKCHb4ifp+EbYWk
         kdBNPaipwp/lUBghsj2S93xdewne12SniH6HFidGOCunKoAHMITNw7DOBY+B1h93M0jU
         bKDIevUtPEIbXEUBJx2iNWhqoIZObDtxn0XzwFr7s3cRQ1cpBni51KmFjlcstLQYmzZu
         31BA==
X-Gm-Message-State: AOAM533+nLzDYj8yZT54LGUK5HIs4h7EndtQjvNRLOaTmY7ISuzlp6Je
        BDarkgDPZs4Dp9Sx4gr0tY16XTupbYPKdAdjHAf+uKljhqWD7ZeMzlTmHEVIlSM7tnD23ZAs3ZG
        1HEJYN8emfy2w+lsAzavTnb8XN1N+DDy6xDku5Yo=
X-Received: by 2002:a05:6000:1888:: with SMTP id a8mr70863wri.258.1644859721542;
        Mon, 14 Feb 2022 09:28:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw4VJ7GdAoNVKf4UbogMbxJVPbcvrv/rGMMFokvBRogG6Fr4FjAve/dO2zAbHh3hVqyQLkpPA==
X-Received: by 2002:a05:6000:1888:: with SMTP id a8mr70852wri.258.1644859721314;
        Mon, 14 Feb 2022 09:28:41 -0800 (PST)
Received: from [192.168.0.106] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id p32sm12933096wms.1.2022.02.14.09.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 09:28:40 -0800 (PST)
Message-ID: <8347bd3c-12d4-8479-153f-8a5beaec786c@canonical.com>
Date:   Mon, 14 Feb 2022 18:28:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 3/4] regulator: dt-bindings: maxim,max77693: convert to
 dtschema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20220111175017.223966-1-krzysztof.kozlowski@canonical.com>
 <20220111175017.223966-4-krzysztof.kozlowski@canonical.com>
 <YgqGT999nsjUGp9Z@sirena.org.uk>
 <12c66ced-c4a4-3a4e-f84b-83edb9e3fc58@canonical.com>
 <YgqIiv8fZeqFFUHX@sirena.org.uk>
 <b0aaf1e6-c626-e68c-a0d2-4a7ff372b395@canonical.com>
 <YgqMZhNhMRgO0V8t@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YgqMZhNhMRgO0V8t@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2022 18:07, Mark Brown wrote:
> On Mon, Feb 14, 2022 at 06:01:17PM +0100, Krzysztof Kozlowski wrote:
> 
>> You mantioned new features - this approach does not change that. If you
>> add new properties to common schema, you already alter bindings. Just
>> because we use common part, it does not change the fact that it is a
>> bindings change. Adding new features in common schema is the same
>> binding change as adding new feature in the specific binding, except
>> more work.
> 
>> I guess you though that work in scaling, so yes, this scales worse. The
>> benefit is that this really restricts usage of regulator to what is
>> supported, so allows to detect wrongly configured DTS.
> 
> We should have a way of specifying generic properties that doesn't
> require us to go through every single user of a binding and updating
> them all, then auditing by hand any new users to make sure they didn't
> forget one of the generic properties.  This is just error prone and
> miserable, especially when most of the checking is done by hand rather
> than automated.

I see. The hardware really does not support most of core regulator
features, so if we switch to your proposal
(unevaluatedProperties:false), the DTS could contain something which is
good from the core regulator point of view, but does not fit at all this
hardware.

A disallow/deny-list could solve it... but it also does not scale.

Best regards,
Krzysztof
