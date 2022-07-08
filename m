Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A28DF56BDBB
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 18:08:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238622AbiGHPcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 11:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238592AbiGHPcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 11:32:53 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6678D2B185
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 08:32:52 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A228D843A9;
        Fri,  8 Jul 2022 17:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1657294369;
        bh=HiTzpZw6pMoVB73j98ThcLUwwhjN1I83nSgju8kh5K0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Rzgayjiyi4Y9CykaUIV3gcX5r4a4Fs9t2FWHIZjHWSgNNgfszKtaaB0hyyy0gi5Om
         PTJ1VrlfFNMws+wDTfcTx1peHpanrQhfd45AOeXs2d3GSn5etdDCmIxcB+ii9sLbZs
         VTckE/BX64hcY6xNRR2iOISvVZjNxDBJqxUK3ZH0jKg4nz/oBoAYjMwiBOXi4Zxv7y
         eyvK6Bg02fHynwesA2Ci1KiQinCpzXaAofmXsnD4WPCkBwHUuGFapaxB8wLVIKawX8
         x48v2aff/IfUDVfIQR39Eb69WXEg0AzoMqaB8ilOaWaJjSYsCvj9JEgLY+J6IvapRG
         VvKx7nmxX3ijw==
Message-ID: <f0583d3e-eef1-7f97-9e06-e8dcd2859e9d@denx.de>
Date:   Fri, 8 Jul 2022 17:32:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org
References: <20220630173922.92296-1-marex@denx.de>
 <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
 <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
 <27495fa3-b4ae-7502-45f8-5eb4c5e36640@linaro.org>
 <247d48ae-d22f-4adc-07c0-74dbccfc9390@denx.de>
 <20220701000959.GA3588170-robh@kernel.org>
 <cbb47a74-72ae-5db3-ca11-6c01a092fa98@denx.de>
 <eb8cede8-6493-c116-29eb-0303c1871239@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <eb8cede8-6493-c116-29eb-0303c1871239@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/4/22 10:00, Krzysztof Kozlowski wrote:
> On 01/07/2022 10:06, Marek Vasut wrote:
>> In the local patch I have to imx8mp.dtsi , the simple-mfd had to be
>> added for the ldb bridge child node to bind.
>>
>>> 'simple-mfd' is saying the child has 0 dependence on the parent. IMO,
>>> 'syscon' contradicts that, but that's an all to common pattern. You are
>>> saying all the clocks (or any other resources) in the parent can be off
>>> and the LDB bridge is still functional.
>>
>> The bridge itself should work even if the block control is clocked off.
>> The block controller apb (register) clock have to be enabled only when
>> accessing these two LDB registers, which should be handled by runtime
>> PM. Or what am I missing here ?
> 
> If I understand correctly, you need the device's APB clocks to be
> enabled to use the child device? You have a dependency between child and
> parent, so it is not a simple-mfd.

OK, then ... what is it ? Some sort of hint would be helpful.
