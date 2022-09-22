Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A27A5E630E
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 15:02:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231325AbiIVNCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 09:02:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231599AbiIVNCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 09:02:14 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0979AE85D
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 06:02:12 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id c7so10870254ljm.12
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 06:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cVMg/fz1MNXQLv9CGzV1LCzFUMQRbxIm6yntQAZGhVw=;
        b=IloRjzIYi1WAOC4+7kTmpectNfjfNTrQ+FtITVWS+4BFa/yFAYNuws4FJABwo71s/1
         L4aT8L+JwBbdPCiT/scS4+D3J9JyEpWMRS2Ep+42Ye90EtEcC8qaW1+KGiUznyIGIhB+
         bbFBdaMYmLBK7/6VxA6R7843tn3Psta806VG1+P+F8x0kvTppbrBL36geHvkfubl4Dv2
         rPSmsRKTZkdShqivbEJyvWbbagZa7Jyxn2OxAibb6Ptl9kznoJLTH2gGiHymYxZnjzd3
         zgnneEy92+S/LXcURNnW/iIM8Lc0KWR544EKqLbpuWd1Z9ym/Ll4Ly41Qp/kK8RlcBxY
         TX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cVMg/fz1MNXQLv9CGzV1LCzFUMQRbxIm6yntQAZGhVw=;
        b=4clCAYlof9aSX9vaReTfKAhyf8hKyzwPppxpDhjhbaBsTZCX70SM7oT7MbHYg/6IHf
         2DwUyO7/+fV6NaYeLf5FYK9hmyJAKaMgulfTHYzC+jYqqxtzLWwvI+qYk7n3JUNir0b8
         Ad5DLCnmTOflLZxbdPUxySY9rLBQO0bdyOMLLLsAtUJQYsrNsYyITV4SGWfxt32CMbm0
         /l0F66mUWAzn8xpMhENubNV7J5/6CKIQFJmO289XShHCGEAbDnnmuSsce6aGIGPOw5HT
         QFwHJU3Lqv+Ct7uO8Q4lWRdPMRSiKi67lvEGIPEx/Qx8QaclrPt4FgOBtPLc6lYgizXM
         RMbA==
X-Gm-Message-State: ACrzQf3qL2v2K1jT20JtPQhhV23K3dJZ3qhONlR5fhcGufswResucb12
        0oU/OrW5ZE5sM6se45fVNxWJwKQFINdhlA==
X-Google-Smtp-Source: AMsMyM6HelI2NtfIqzLSvZUhvzgCuffkovkkPzYADF6GSBPCNRoFOXrTzl51+2JRsZTpEGfITTu8EQ==
X-Received: by 2002:a05:651c:221a:b0:26c:6fe2:c146 with SMTP id y26-20020a05651c221a00b0026c6fe2c146mr999484ljq.284.1663851730907;
        Thu, 22 Sep 2022 06:02:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id n5-20020ac24905000000b0048a934168c0sm937083lfi.35.2022.09.22.06.02.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 06:02:10 -0700 (PDT)
Message-ID: <af76128c-431a-6a90-495e-88693a4cdf7f@linaro.org>
Date:   Thu, 22 Sep 2022 15:02:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v4 3/3] arm64: dts: freescale: Add InnoComm i.MX8MM based
 WB15 SoM and EVK
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>
References: <20220922081347.3860008-1-s.hauer@pengutronix.de>
 <20220922081347.3860008-4-s.hauer@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922081347.3860008-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 10:13, Sascha Hauer wrote:
> Add the InnoComm i.MX8MM based WB15 SoM and its EVK. The WB15 is a
> half credit card sized board featuring:
> 
> - i.MX8MM CPU
> - LPDDR4, 1GiB
> - eMMC, 8GiB
> - 1Gb Ethernet RGMII interface
> - WiFi 802.11 a/b/g/n/ac, Bluetooth 4.2
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

