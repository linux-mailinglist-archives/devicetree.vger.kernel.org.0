Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85906667E34
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 19:38:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240286AbjALSiR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 13:38:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231800AbjALShs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 13:37:48 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF44868C81
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 10:09:11 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bt23so29553079lfb.5
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 10:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2AONvkhef5f2cDlIqM1wUc/wodA5wwmZ55DlKYwb5ZA=;
        b=OLPT5eRQ6Z3xt1YMnQLnudatq+kWQNJHtdB7dS8D8Xe3KzlO46LJCqTfbsqiQFrVyv
         jbzFpOu5bM94/iyKUmzzG5fdyZC7emI/O8QYiOj3TXgnKWnwpNFWv7uuhIIuvIINUnJW
         O8TE80ZMV27mPqWup4cX92nWHH7hx0LysK4xBiotjpb60MKNm1osej0IhRq/XpyMdx/N
         C0sIZCtkaC/3t1IUdvuIYimSR2zmzGJgZNUppytfcDcs1wRejq9mwIiC0wvUXQp0LcHO
         Fd+oZa0vyLfloW/R+BFlxFVrUdfFk85/zZ1I4qIl4766epCGU4h69FAcgbOzQZ1iUOUa
         D5Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2AONvkhef5f2cDlIqM1wUc/wodA5wwmZ55DlKYwb5ZA=;
        b=HmBdZMINdt9zDymheblfCCPhvUNNdzd0CDBkO+2RlaNhge0ZJyte1lFsgsJrrBlY7W
         WbkLgLfwDXiCO31SUf8+VoA5lX60zNvSErIMhGL5Bq+CpVrSJ01cs+AwyRyS+FDVYlAz
         1A+Y+l25XC4xvYJfzQG58ggaMqTEKbyViBFSZeksyXaJJDY00BycTXqwrQb9vGeN+1/3
         YkA5Zd/WumbXOdcUdKAwlspB2qRPliWrjJ7C16GakgKBkLNfQk8DvKFe9+8UB79G0oIx
         EjxCnIZ3FDAP3+Ut7R8N4GN2eY5UMzPb5hKd/n6wWw77FPqY8/43Qcr7FSsz0y5ZubUi
         GieA==
X-Gm-Message-State: AFqh2koiqDQ/PLC0XUdtoNfBXm91A0eIny6VIjrdl2XWHboN6a06sl6b
        7A5M8oy92xt+BsFPTalLS/mr1Q==
X-Google-Smtp-Source: AMrXdXvbW0xpuY3Tfk8QTt05lRP1Iv3YN6CkHIYnf0ujcw7rvU7p73KK1BwSulRFu8kixMJEkO/pkg==
X-Received: by 2002:a05:6512:340d:b0:4b5:69f1:61b1 with SMTP id i13-20020a056512340d00b004b569f161b1mr21998055lfr.42.1673546950140;
        Thu, 12 Jan 2023 10:09:10 -0800 (PST)
Received: from [127.0.0.1] (85-76-49-9-nat.elisa-mobile.fi. [85.76.49.9])
        by smtp.gmail.com with ESMTPSA id t18-20020a192d52000000b004cc66d4419asm3399113lft.39.2023.01.12.10.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 10:09:09 -0800 (PST)
Date:   Thu, 12 Jan 2023 19:00:29 +0200
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
CC:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH=5D_arm64=3A_dts=3A_qcom=3A_sc828?= =?US-ASCII?Q?0xp=3A_Vote_for_CX_in_USB_controllers?=
User-Agent: K-9 Mail for Android
In-Reply-To: <a3594770-1d7e-de02-b78c-8446d239b60b@linaro.org>
References: <20230112135117.3836655-1-quic_bjorande@quicinc.com> <a3594770-1d7e-de02-b78c-8446d239b60b@linaro.org>
Message-ID: <9CCF91EB-3BB8-4547-AF0F-7CB774A15BDE@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

12 =D1=8F=D0=BD=D0=B2=D0=B0=D1=80=D1=8F 2023 =D0=B3=2E 16:21:14 GMT+02:00, =
Konrad Dybcio <konrad=2Edybcio@linaro=2Eorg> =D0=BF=D0=B8=D1=88=D0=B5=D1=82=
:
>
>
>On 12=2E01=2E2023 14:51, Bjorn Andersson wrote:
>> Running GCC_USB30_*_MASTER_CLK at 200MHz requires CX at nominal level,
>> not doing so results in occasional lockups=2E This was previously hidde=
n
>> by the fact that the display stack incorrectly voted for CX (instead of
>> MMCX)=2E
>>=20
>> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
>> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc=2Ecom>
>> ---https://git=2Ecodelinaro=2Eorg/clo/la/kernel/msm-5=2E4/-/blob/LV=2EA=
U=2E1=2E2=2E3=2Er1-03600-gen3meta=2E0/drivers/clk/qcom/gcc-direwolf=2Ec#L27=
03-2725
>
>Maybe in the future there could be some power savings for lower freqs=2E=
=2E

I had the same question=2E If the vote is not static, but depends on the f=
req, shouldn't this be to implemented as an opp + table?


>
>Reviewed-by: Konrad Dybcio <konrad=2Edybcio@linaro=2Eorg>
>
>Konrad
>>  arch/arm64/boot/dts/qcom/sc8280xp=2Edtsi | 2 ++
>>  1 file changed, 2 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp=2Edtsi b/arch/arm64/boot=
/dts/qcom/sc8280xp=2Edtsi
>> index 2ed17baf50d3=2E=2E4f4353f84cba 100644
>> --- a/arch/arm64/boot/dts/qcom/sc8280xp=2Edtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp=2Edtsi
>> @@ -2265,6 +2265,7 @@ usb_0: usb@a6f8800 {
>>  					  "ss_phy_irq";
>> =20
>>  			power-domains =3D <&gcc USB30_PRIM_GDSC>;
>> +			required-opps =3D <&rpmhpd_opp_nom>;
>> =20
>>  			resets =3D <&gcc GCC_USB30_PRIM_BCR>;
>> =20
>> @@ -2319,6 +2320,7 @@ usb_1: usb@a8f8800 {
>>  					  "ss_phy_irq";
>> =20
>>  			power-domains =3D <&gcc USB30_SEC_GDSC>;
>> +			required-opps =3D <&rpmhpd_opp_nom>;
>> =20
>>  			resets =3D <&gcc GCC_USB30_SEC_BCR>;
>> =20

