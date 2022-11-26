Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E14C6397A8
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 19:38:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiKZSie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 13:38:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbiKZSid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 13:38:33 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9659512AD4
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 10:38:32 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 71B9F85073;
        Sat, 26 Nov 2022 19:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1669487910;
        bh=0soNJqMiRYMxyuqxJ7K59+HaFyH+vf2ttpoTXZTknZ4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=opYYilcr5sD/f4jBPtr1+6nraiipuFOEw0vZOLgMBMg5H3IpVm5FkHCWFeFmOeX0M
         F71qoNLyG2uZw7+JsVpemykuBF9ltEUjwyOjAus33S2DqY6Kpdp2Vd99xXpPdf8GED
         gfyBJwABX/w63oy0plBRokc06DEuuZT8CzPldu9f/VwATNkiq+8JD050G4LvvXuxZy
         xHfm0iQmtWVBNJ9xDr+JQLTctYKgPo+LsaSciM3Xk/grhli2hmRlA8RKB6Z1kDCHYO
         1/hojGc26a5ls/t9EqvSgEyotOKczReKr31bKqLVUI8HXs4gEmMQG+ojEqIQSrM2et
         NRsAXh3MrDPLQ==
Message-ID: <1103bf50-e24b-4f9e-06e6-42bc6a265014@denx.de>
Date:   Sat, 26 Nov 2022 19:38:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v5 3/3] dt-bindings: imx6q-pcie: Handle more resets on
 legacy platforms
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221109002449.35936-1-marex@denx.de>
 <20221109002449.35936-3-marex@denx.de>
 <57f6dfef-5551-d186-4b0c-f4324f6c3350@linaro.org>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <57f6dfef-5551-d186-4b0c-f4324f6c3350@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/9/22 09:45, Krzysztof Kozlowski wrote:
> On 09/11/2022 01:24, Marek Vasut wrote:
>> The i.MX6 and i.MX7D does not use block controller to toggle PCIe
>> reset, hence the PCIe DT description contains three reset entries
>> on these older SoCs. Add this exception into the binding document.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Are there still any open topics regarding this series ?
