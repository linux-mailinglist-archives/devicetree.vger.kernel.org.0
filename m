Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59B5D6AB138
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 16:24:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229507AbjCEPYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 10:24:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjCEPYE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 10:24:04 -0500
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D58749ECA
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 07:24:01 -0800 (PST)
Message-ID: <32cb5f8e-7e50-af63-ae27-5eda91b66c11@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1678029840;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=LILnWwT+X01TlcMDNKt57y/oun3eaRS2/bsTMJ/7RMk=;
        b=X/rsn9XKlZjsL0EN4667M8P5xeWi+KUzcZU5hXoVasvXhgOsMWt0pduNhbPWuTv0EBGrGF
        s1Yyfv4ljOGFjmRHhj5mKMMjeULrUrwNM13CU9Tuolzey8wXpuQweLGcJ1GFe6b+SE/mjZ
        7ADtiAyNtFFzQw4nDJLOmVaj5e6PA63WbC4GeOEFT5+sGexsTf2ilMFX2Ph7jjU6ImGxVE
        qG8+PTi+vLna1DMfFWJdaMZwZaHwJrqlmu/2D5RoHM5bCtrtT4OGEE7dM3P7ZquCIVgNaB
        PmELKn78WZPjZY1V6Yls0bLE9V7/gmAfNXb9XgC/w7k4v4aykWxCURGvDavkCQ==
Date:   Sun, 5 Mar 2023 16:23:58 +0100
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
Content-Language: en-US
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
References: <20230304164135.28430-1-strit@manjaro.org>
 <CAMdYzYoxti1ZU-xvc66bVx5TmRfUJK=Zx17pHSvaEELuRE95Uw@mail.gmail.com>
From:   Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <CAMdYzYoxti1ZU-xvc66bVx5TmRfUJK=Zx17pHSvaEELuRE95Uw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
        auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Den 05.03.2023 kl. 14.43 skrev Peter Geis:
> On Sat, Mar 4, 2023 at 11:42 AM Dan Johansen <strit@manjaro.org> wrote:
>> Just like the Quartz64 Model B the previously stated speed of sdr-104
>> in soquartz is too high for the hardware to reliably communicate with
>> some fast SD cards.
>> Especially on some carrierboards.
>>
>> Lower this to sd-uhs-sdr50 to fix this.
>>
>> Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
>>
>> Signed-off-by: Dan Johansen <strit@manjaro.org>
> Makes sense, considering the problems we're having with other boards.
> We should probably stop using sdr104 altogether on Rockchip, at least
> until they release a chip that improves on the limitations of pinctrl
> speed. Considering the frequency cap it isn't that much of a hit.
I agree, better have a safe default.
>
> Acked-by: Peter Geis <pgwipeout@gmail.com>
Thank you for the Ack.
>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
>> index ce7165d7f1a1..102e448bc026 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
>> @@ -598,7 +598,7 @@ &sdmmc1 {
>>          non-removable;
>>          pinctrl-names = "default";
>>          pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
>> -       sd-uhs-sdr104;
>> +       sd-uhs-sdr50;
>>          vmmc-supply = <&vcc3v3_sys>;
>>          vqmmc-supply = <&vcc_1v8>;
>>          status = "okay";
>> --
>> 2.39.2
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>
