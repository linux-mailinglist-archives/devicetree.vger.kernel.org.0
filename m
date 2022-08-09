Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF1A58D2AE
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 06:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232199AbiHIEQc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 00:16:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbiHIEQc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 00:16:32 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A3AF183BE
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 21:16:31 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id v2so6776256lfi.6
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 21:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BXm5xJUGVrbZ7X+f9q8h/GGrVoPzTRN7h3swVDA7wEA=;
        b=Frvt7KNRgaHZsW4iXHai9HQhMljxA6qJGz3IxAPFB6JuP2fyrTxq6lZpzuMZ4BCF6m
         edEe33yJ75Up5Paa93trQ7B18H4SlmdbAjai6JHZsI14FE7ccvT+WbLVxWP5G7Ao0ri5
         DdgrkxJLhFeIQt2fN5FnUoYMeLtkMxQ2HniXxCXsrmP+KuB/U5VdlSy5lkv3pINyoxTC
         +hdDu0u0LTxzK+95czS3LKbFu7FFFiUhVSQvOLnmZ1LQMP5ZAWLznD8akiCHnGR0khMm
         yKYmXKvXD0+bPYD2BEQptkt1fji1ILZeLZCRMgXXZjW8a590+9+gvEXZxDAjzgy4yTFt
         13bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BXm5xJUGVrbZ7X+f9q8h/GGrVoPzTRN7h3swVDA7wEA=;
        b=ND58XJ2Q8mxKmL6Gi2RBg+K+WM/YX6kSGzR2KOUSzcC3QZl3gjj+hSXV1DrzaVM9kv
         uyBsbMqEniCAbYBdEu58nzaiPtCdF9EFG4i4OoLVRD8WdSoShQG4DqsIJ4tPEzmya0VM
         UJo44Ydv36nRZuHYYjSa+5U1Lv0XxcS7zOioKwJMxhOO3DfyznOPK7a+wNHQvekSkzUI
         aINHRQQC3v1Nieb5xmcEAflN9CE9lmN/CgLNSY9/XuROa3R3M4UJ90J8to+lGZvwK0dl
         KcY8HwmbWJRlsTwTrG2BahD66//mE2hjtpmNYE3/MqmKX8n0OAnCXD+mz+gM7wefDdAH
         9mkw==
X-Gm-Message-State: ACgBeo2SQmO6ZfOq0icR++jM11azUjiPR+ufchx0v+tqZBen2f6yhRzO
        c+gZd499yc0uHmuzqY08+FaHqg==
X-Google-Smtp-Source: AA6agR4qiFDPODwmXyrPpRHzP3QTqhC5M6JhKHs8yM88BBGnIYD0EjfFiBKmaAmK/FGPBdGaW8R/Cw==
X-Received: by 2002:a05:6512:234e:b0:48b:3307:eae9 with SMTP id p14-20020a056512234e00b0048b3307eae9mr6823366lfu.105.1660018589259;
        Mon, 08 Aug 2022 21:16:29 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id x8-20020a056512078800b004886508ca5csm1617155lfr.68.2022.08.08.21.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 21:16:28 -0700 (PDT)
Message-ID: <781cf213-0ca8-6b03-2d60-280bfeb6d39d@linaro.org>
Date:   Tue, 9 Aug 2022 07:16:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [EXT] Re: [PATCH v5 3/3] arm64: dts: imx: add imx8dxl support
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20220801200121.672619-1-shenwei.wang@nxp.com>
 <20220801200121.672619-4-shenwei.wang@nxp.com>
 <DB9PR04MB8284548EFC5EBBA826B55F34899E9@DB9PR04MB8284.eurprd04.prod.outlook.com>
 <5d7f44e5-9114-65b6-af7d-4bac75c62a46@linaro.org>
 <AM9PR04MB827446CA7B2887414A5C641C89639@AM9PR04MB8274.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM9PR04MB827446CA7B2887414A5C641C89639@AM9PR04MB8274.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2022 21:16, Shenwei Wang wrote:
>> On 05/08/2022 18:22, Shenwei Wang wrote:
>>> A kind ping. 😊
>>>
>>>
>>
>> To whom? What do you need from me?
>>
> 
> This the version 5 of the series of patches, and should have addressed all those comments from you and other reviewers. The other two commits were acked by you and Rob. This one hasn't gotten any feedback or ack so far.  I would greatly appreciate it if you or Rob could ack it or let me know where to improve.

This is not a DT bindings patch. Why do you need or expect my ack?

Best regards,
Krzysztof
