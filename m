Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D10B6DD212
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 07:48:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230113AbjDKFsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 01:48:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230208AbjDKFrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 01:47:53 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B1113C1E
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 22:47:30 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id q23so7982306ejz.3
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 22:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681192048;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FPSTEvA1ifnA/5RGYbPKGXrz8iL3NU8pq5huj3Csxpk=;
        b=Nh6EMI1/niHEAg8p5P9vKN6WLBSIq8QvUqdLO4i2ra+Awk7FSPXCr4c0sK4NjFTMuW
         yFIb8qSsHclNWh7/LnGcEHdLteW/njDWm+3Vbuhptzbqpz/Vbk7JQz0IFwc/5cW50kVo
         5IjimEMn97pyGMRbHgoaKdlXbuqRY1ju8XG/GbkUNrn49SeOIyBQA8p/rLTg0gkvr9kf
         aQBwJsyb9vzEtg4QxRZS1xeP9clqzoDue0pyNpMppx/ILC2TLp3zXiwCkCR96rpd+sqv
         RDyUmOqKwUNJiqbi0NKvCAJJNfXRuJ3lMvIsgg9jCX7D5yz9iU85gzAJ+rTisqlI5Ya3
         LrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681192048;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FPSTEvA1ifnA/5RGYbPKGXrz8iL3NU8pq5huj3Csxpk=;
        b=BV4CvN6GoDpMLnZICPXL+Ia0JCGfdtAeHC3FBxxNlH3ADAyeh2VHSmxZ4RmRc8NqsA
         oV/futA2gFBaktqWgRQNzyAZQtzpROee81JNW4HwocjsxhvHri7m0DiLiKBztuN1/kdG
         e52R1vtXgiGdUmMqUfj8On/AUF0g5ecPZAJZgwjKHflo27xbWUiNog1w6BlkV/oHFa6d
         HD4n45heHtFsjCXe45OmZQ+GuDCf09sd92/mDVuk9282KEMepKVx//FcA+MurqvaMtfF
         rL2/fQsuJBCSmcgftpaF1qLUjxbON+TV5LAYGnJFhR6o7C3P/7dcPjy/RXdrYy/8bqt2
         z3iw==
X-Gm-Message-State: AAQBX9frRm+CJOLkKZ0g+LKLjAAWpQ4wBvtv86mw+de8iZHZq/k0HY6c
        IoCNlCctNqUmCW1naBXeP324aQ==
X-Google-Smtp-Source: AKy350Ze2IvxR1SdsI8p4QSbRcMerQCpJFSpsHupPSHWQnSu3X1qsk7l5wEW8sDOmhFk6Lqc1vgr7A==
X-Received: by 2002:a17:907:8c06:b0:934:286:f9 with SMTP id ta6-20020a1709078c0600b00934028600f9mr7749606ejc.27.1681192048068;
        Mon, 10 Apr 2023 22:47:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:dad2:72b7:3626:af61? ([2a02:810d:15c0:828:dad2:72b7:3626:af61])
        by smtp.gmail.com with ESMTPSA id o12-20020a1709064f8c00b0093f322187f0sm5739593eju.189.2023.04.10.22.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 22:47:27 -0700 (PDT)
Message-ID: <1560cfdd-1305-bf88-0235-1af452771d75@linaro.org>
Date:   Tue, 11 Apr 2023 07:47:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V2 3/6] dt-bindings: imx-thermal: add imx6sll and imx6ul
 compatible
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        linux-imx@nxp.com, "Rafael J . Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pm@vger.kernel.org
References: <20230410205803.45853-1-stefan.wahren@i2se.com>
 <20230410205803.45853-4-stefan.wahren@i2se.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230410205803.45853-4-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2023 22:58, Stefan Wahren wrote:
> Currently the dtbs_check for imx6 generates warnings like this:
> 
> ['fsl,imx6sll-tempmon', 'fsl,imx6sx-tempmon'] is too long
> 
> So add them to the devicetree binding.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

