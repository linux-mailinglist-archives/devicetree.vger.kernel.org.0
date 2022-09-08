Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74E205B1CAB
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 14:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231624AbiIHMVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 08:21:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231643AbiIHMVf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 08:21:35 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 246341316C4
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 05:21:27 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id m15so7733023lfl.9
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 05:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VgEQBzw8CkYfD0tP7q7CxKLDwxdimyf08wYdm+SsNM4=;
        b=JE1lwkLdwJjyylYh6CyMucqBmO10IDxKkLskdbPjbV+hFAmyhcGhrysugJC6gpLh3u
         UTjlfGQAm7CSZn2UzNfKJVwXpJvcGAvEUY37GR+a6TUpZZkwgJT9mBWjD6xrnW4+DnET
         G6Afz4SSXRiSPgRR4TEe6LPng8N/rCbJ1ApYoKI+YhEMlgOctkYIxY4V5n//tIhS5z6U
         DDVnctzdgoGGro8KojCs+YWeobRoImK/yNmoCr3m5H22ikFRXBgtpXlLlT+Pvz2W3ZCn
         dP7saY7lfj0IreSJ/AWm1thwoiLK027MbbAAyg1nk083yGLgzomJOF783aGxsl8Yval/
         pUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VgEQBzw8CkYfD0tP7q7CxKLDwxdimyf08wYdm+SsNM4=;
        b=QeE3rusHFAyQQy+6KOrmjTWRNxxda0w4zea0yDi5czEM5t6Vy6iXu8nSDwh1EXcd05
         qkClgatWBbVZiKfHLHhxVjlEbxNotSR21FJzTTEWuuHUY2YFtHePxRpC7mQ5jhA425Ni
         FV+3BdpAFi85MgP/MPa0K3hgO1SlUPGf5YUYZpwVIxduzgWLMvha1Ut3ud5VpOO94NiN
         APBKhLj/5Vmhcfb3yk1qHUdBTW0FIYOTbo2EmtohuIjLGGSvkYxNC55HqjqrGdt4YJ8J
         /lWwGd7RjzVBbf5KAeJP3zreIEzV7iomXfSpLOHHjc6PElgkQhPuEVUVaRiDivhk6AF6
         +sXA==
X-Gm-Message-State: ACgBeo2IT/voyGC92XlA7RQyANyTy1/ccLbYfZtqdF6AX/P+5Tzzp0bN
        TslXogGdcTS1HllKjKaQ9/FpOA==
X-Google-Smtp-Source: AA6agR4tuDhl0ADnXwL3Hle5HBL36tuaPl5fK8SbbKt05XtYQZiLpAzFF+LyOp31cFAZNVH2s6NpaA==
X-Received: by 2002:a05:6512:2391:b0:494:7f90:ac04 with SMTP id c17-20020a056512239100b004947f90ac04mr2624366lfv.521.1662639685495;
        Thu, 08 Sep 2022 05:21:25 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bg37-20020a05651c0ba500b0026acc9edecdsm1060276ljb.47.2022.09.08.05.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 05:21:24 -0700 (PDT)
Message-ID: <f89cede6-f312-3500-c900-0468200a4464@linaro.org>
Date:   Thu, 8 Sep 2022 14:21:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 14/20] dt-bindings: mtd: relax the nvmem compatible
 string
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>
References: <20220901221857.2600340-1-michael@walle.cc>
 <20220901221857.2600340-15-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901221857.2600340-15-michael@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 00:18, Michael Walle wrote:
> The "user-otp" and "factory-otp" compatible string just depicts a
> generic NVMEM device. But an actual device tree node might as well
> contain a more specific compatible string. Make it possible to add
> more specific binding elsewhere and just match part of the compatibles
> here.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
> changes since v1:
>  - fix typo in commit message


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
