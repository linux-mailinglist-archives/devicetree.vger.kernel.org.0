Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26B4C673731
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 12:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231143AbjASLnh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 06:43:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231144AbjASLnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 06:43:17 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DFD170C7F
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 03:42:48 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso3363888wmc.4
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 03:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aGOCUa90Q6GecXZlyktaQMT3FaJcTaKaXef4xUwVlsI=;
        b=mQJdRPQT/G925muxm5y5X5xxGvrzo9HRieViv3UPDfZ0YnByak959w8xB5xBRvW691
         +pvsFhbbf0sKaRSDu744jxUU2O/kZyH3j4plKgd2/4caZ2b0yfAybXtbjNWL3vhjGVDS
         SWFzsbuIrnhhJoFFP62F1nfIFAk5oAdkEMElKmbHx8Efk2rCMQ59pNNnfxWh/NQUYEdx
         wHWaK4yeFhFPPVSZpzOpOpjYuW3iqKQIAnTM2BH1yu8LD48ni1sgvqK5rSAL8G3tUlgy
         gz9LUuxC4fcLDeQkOUzFnK46bF97fyHhhDw5rqYjSFNRJutq1oHNNyRdFoptOcd3yhrR
         AunQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aGOCUa90Q6GecXZlyktaQMT3FaJcTaKaXef4xUwVlsI=;
        b=foISu7JItP5bDad5KewrQ0R9x9IVHm7C0Lv8uYzSEyjPMHXV83bF3NhLcx/9/qPjmj
         FcYd4wX/ITszSle3e/ym+/IRZOGreCbrrNwXuv7tGA+sf9t9TnSwOmlfi/AkRtajrwG6
         q7gnID9yti3gFPvSbp50RAdfW1e8yhe2pJ9CNj8qf76BKKpMZG1g+GURnOq4OfnXQIj6
         doh01gidMhjskd8LWKPeH1Pz84Sx40kzpFXXnATh2HLV9/9IOF8nw3hlfNUwWXSZsEFF
         nn3sfasmUhMrKW4SUkGZrGdeCxtZJfYa9VLgzf9jv30U7V6uAhZly4hW5L9d/caqwcPT
         GsFA==
X-Gm-Message-State: AFqh2koQdjP0GdGpiSC7P3u1JgiuxTG/vOlWaQ6Bi8/5jQaWF9W2ZnOb
        jfrJNW0IYN8vlkbmfSHs0Sapuw==
X-Google-Smtp-Source: AMrXdXssEIeVpk3X1FIFFciJq51Cu5AreREsl/mdQ1un6vSac+sLtqMVI3HE4pbO8c7AuMUXfQ38Qw==
X-Received: by 2002:a1c:cc11:0:b0:3da:1d52:26b5 with SMTP id h17-20020a1ccc11000000b003da1d5226b5mr18469160wmb.14.1674128565881;
        Thu, 19 Jan 2023 03:42:45 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p18-20020a05600c359200b003db040f0d5esm4959764wmq.33.2023.01.19.03.42.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 03:42:45 -0800 (PST)
Message-ID: <5e504304-9130-1662-c048-a5863ba9ddb2@linaro.org>
Date:   Thu, 19 Jan 2023 12:42:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 1/3] dt-bindings: hwmon: add nxp,mc34vr500
Content-Language: en-US
To:     Mario Kicherer <dev@kicherer.org>, linux-hwmon@vger.kernel.org
Cc:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, corbet@lwn.net,
        linux-doc@vger.kernel.org, devicetree@vger.kernel.org
References: <20230118123019.3041303-1-dev@kicherer.org>
 <20230118123019.3041303-2-dev@kicherer.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118123019.3041303-2-dev@kicherer.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 13:30, Mario Kicherer wrote:
> Add dt-bindings for the NXP MC34VR500 PMIC.
> 
> Signed-off-by: Mario Kicherer <dev@kicherer.org>
> ---
>  .../bindings/hwmon/nxp,mc34vr500.yaml         | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/nxp,mc34vr500.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

