Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3064E797842
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 18:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231893AbjIGQpD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 12:45:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231458AbjIGQpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 12:45:01 -0400
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F03681FE6
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 09:44:32 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9a2a4a5472dso499612166b.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 09:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694104941; x=1694709741; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ragyha6lBrnhd2E4z05r5Sz67SJVNmBsRmnvqyiefU0=;
        b=XjXMTz3wivxBCL4g0gQMzWwMvM+0UzP+2jWfZWGMUmJAJmfVTbqe+6F/P6OWcVhotP
         VyZ0ReQ+I+WU4FfVK6+XAF00rVC4+UJuk7ERF0uSEef+Cwi+QeeZ/UizYEnn23EDRJXm
         asGJ7RZ/udaHVmgy0ONYICgTJVn3D9Ki3aIW9K9c2012PdfymIqam50eGL7YkGdnmi8t
         vHPm7gKUkZjrzv8MAMlT7Md7a0WWEuoZNYKiIdoufcLThQ6MhHznk3aN1pT//WZhpwQR
         p8JLNYJ2XGKZAQNaWyfTAk8FC8f49btcKD6983+X6YN3lzAfexWj7hpKho1JcXb0HC/G
         OHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694104941; x=1694709741;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ragyha6lBrnhd2E4z05r5Sz67SJVNmBsRmnvqyiefU0=;
        b=c9VQWY7zTwu5y64fLyiMj/daGMTKj+EP/a3jpPhbyai4gTiGdmtTdAtJndUGp5bg9G
         qhPS6cx0vbddSqwp4o2AMLN1r+BCkVbZSagvbVzFR+zyKCY+0ZKueE+N+bcBfw9BKFSY
         uDvzGtLV1gy3h2HkbkQcYqAXx/gt6RfdTONokwX0fZsT2toLDamDee2G3Zk7tHMlmg1I
         rHk2xlhRKKz15xt5Ky/MGaZniZOH+W6OI+GuoaJ1FOmueFK9xCzeXPcP/zo6gRyC4Tvg
         KfuYj6/hmXsw7Z7zH9PGmuEhRjA42zIv7CfCLCMOH02nJpg/54BEQV6+BMjVngvQas6R
         fxfQ==
X-Gm-Message-State: AOJu0Yw7szk8uS7SydJvF9kYsZjqU8i64iCM+eWsUAT40wI1vJuSCUlU
        Q3E2kVFmaxoLXPv1yPnhWQPRBcgbY3SkzNLVdyL2cw==
X-Google-Smtp-Source: AGHT+IEP5lHuo6K1dRgooEVKve4Q+c2iLkWlLM+qsv5lJAaTMcXKxc9v7sPbPiK8aU4DbGM8Si9Acg==
X-Received: by 2002:a05:6402:26ca:b0:523:72fe:a3c4 with SMTP id x10-20020a05640226ca00b0052372fea3c4mr2255438edd.0.1694066304465;
        Wed, 06 Sep 2023 22:58:24 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id bm26-20020a0564020b1a00b005288f0e547esm9343359edb.55.2023.09.06.22.58.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 22:58:24 -0700 (PDT)
Message-ID: <07acf4c5-6a03-0196-335c-88f7c367a526@linaro.org>
Date:   Thu, 7 Sep 2023 07:58:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm64: dts: mediatek: add mt8395-evk
 board
To:     Macpaul Lin <macpaul.lin@mediatek.com>, frank-w@public-files.de,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>
References: <20230904092043.5157-1-macpaul.lin@mediatek.com>
 <20230906092527.18281-1-macpaul.lin@mediatek.com>
 <fbad941f-232b-9f56-5de3-98a16a8c4d89@linaro.org>
 <c3ddf00c-235a-2d23-db60-c998a67a3fcd@mediatek.com>
 <f343b6e2-6106-47eb-71cb-f391aff6cb7f@collabora.com>
 <50f7fbdd-8592-7a47-b2d8-a1af8ed93b92@linaro.org>
 <c951f693-b219-4745-be20-a8e1fee0099d@mediatek.com>
 <E3DEDA34-C203-4560-B07D-8BCB44204FF3@public-files.de>
 <8db8823d-8313-5515-78ca-effc8d6bc47f@mediatek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8db8823d-8313-5515-78ca-effc8d6bc47f@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2023 06:07, Macpaul Lin wrote:
> 
> 
> On 9/6/23 20:19, Frank Wunderlich wrote:
>> 	
>>
>> External email : Please do not click links or open attachments until you 
>> have verified the sender or the content.
>>
>> Can you please only target Reviewers/Maintainers and mailinglists reported by get_maintainers script?
>>
>> I have only sent patches for mediatek and did some tests. So i'm not interested in patches for hardware i do not have here :). I guess i'm not alone...
>> regards Frank
> 
> I'm sorry for bothering you and other contributors.
> I've indeed run get_maintainers.sh script for these 2 patches.
> Here's the result.
> 
> Rob Herring <robh+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED 
> DEVICE TREE BINDINGS)
> Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org> (maintainer:OPEN 
> FIRMWARE AND FLATTENED DEVICE TREE BINDINGS,commit_signer:3/4=75%)
> Conor Dooley <conor+dt@kernel.org> (maintainer:OPEN FIRMWARE AND 
> FLATTENED DEVICE TREE BINDINGS)
> Matthias Brugger <matthias.bgg@gmail.com> (maintainer:ARM/Mediatek SoC 
> support,commit_signer:3/4=75%,in file)
> ...
> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> 
> (reviewer:ARM/Mediatek SoC 
> support,commit_signer:2/4=50%,authored:1/4=25%,added_lines:1/12=8%)
> Frank Wunderlich <frank-w@public-files.de> 
> (commit_signer:1/4=25%,authored:1/4=25%,added_lines:1/12=8%)
> ...
> [striped...]
> 
> You've contributed the similar percentage as Angelo for these files.
> So I think both of you could be important reviewers.
> I'll try to skip contributors who add lines less then 10% next time and see
> if this will help.

No, commit_signer is 1. Don't cc people unrelated people. Unrelated is
everyone which is not maintainer, reviewer, discussion list.

Best regards,
Krzysztof

