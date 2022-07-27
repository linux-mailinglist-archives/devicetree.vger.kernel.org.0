Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D02F5820A0
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 09:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbiG0HBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 03:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbiG0HBr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 03:01:47 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 515881D0EA
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:01:46 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id u17so8664283lji.5
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dXZK6C0i0X70KmtV579RKIt55rAn+L75gbuBynNyQlw=;
        b=d7m6TrT7+9TGKTD0TxN1iMc19mPAXQT42SpmyjoeUbp2xQbgqhwFAkBRuZ2r5JOC1/
         9R8l6aJ0oUlv5MNXwlEf9w4CsGn+s7xoJ864cBDVoNmuRAdpm2tNBPhLfXH5Vb+zTvmm
         1IEsTJceo71RLp0Sny9CTvUB56V/vLjUlBKp/CDT52SzUjRbYdVgWXFCINm0u6Bk6dNQ
         2ZIIH9ZswN5D5BhRT9e8otqwRemxTMlOCfne2xVjLgP8W9yJvhSWh5M19+wDzQEMZ+3c
         XsFCdVBZS7VSkhlnyckU+cb0CK2Uf3WCdljmOnGWXeMPWTnHjzB2bPbi6Piy7n9Z8uH/
         zrkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dXZK6C0i0X70KmtV579RKIt55rAn+L75gbuBynNyQlw=;
        b=PRNOs6UCfYH/4nrU1J4wKELh2o8wR6azbfg6S94Nl3t0ffEzW4QDaIxtFKMZCZBqhA
         jHb3jmtw8mdmwVslfGiReiF6Ds7SNDTa5FyAGJg1NM0yOd4sHJKTmUKlsS9/aAuAzY72
         etebmB/iU27xAGK117t72FC7hQsOoE+B1QDa9XQyHXZW0TJ2IjNIKrmd5TQIpwxMXAHB
         L/nF7G1dFzc51+ufQcjiW+fyIQr4Iy2crYIf0AwWpZdRirTzISPaaPh40kjb3BySQyni
         rwibsGv+gslGRelwk6/kr3JP71raisawB9Oc1o3tbcsQodI6Bci2lydVlu9eU4iBuQ2V
         u+vw==
X-Gm-Message-State: AJIora+zLq7JbnCjLN7nv1kGYk1ehu7YIMqICwiSxgcxnPGocuH2QHVz
        MWWZtTsjnf7HDsXYCSluep+RHQ==
X-Google-Smtp-Source: AGRyM1tHywffhLXONDN5Ms6+hyulYI93frREu+VEfSqawRJzDxcn9TU4SeZnsXCES82tZDj1kGKiPQ==
X-Received: by 2002:a2e:908:0:b0:25d:e37b:2cbb with SMTP id 8-20020a2e0908000000b0025de37b2cbbmr6968363ljj.401.1658905304665;
        Wed, 27 Jul 2022 00:01:44 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id bj12-20020a2eaa8c000000b0025d64453f4dsm1667747ljb.122.2022.07.27.00.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 00:01:44 -0700 (PDT)
Message-ID: <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org>
Date:   Wed, 27 Jul 2022 09:01:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
 <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
 <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2022 08:52, Jagan Teki wrote:
> On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 26/07/2022 15:44, Jagan Teki wrote:
>>> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 23/07/2022 22:43, Jagan Teki wrote:
>>>>> Add power-domain header for RV1126 SoC from description in TRM.
>>>>>
>>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>>>> ---
>>>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
>>>>>  1 file changed, 34 insertions(+)
>>>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
>>>>>
>>>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
>>>>> new file mode 100644
>>>>> index 000000000000..f15930ff06f7
>>>>> --- /dev/null
>>>>> +++ b/include/dt-bindings/power/rv1126-power.h
>>>>> @@ -0,0 +1,34 @@
>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>>>
>>>> Dual license and a blank line,  please.
>>>
>>> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
>>> the issue with it?
>>
>> The headers are part of bindings and all bindings should be dual
>> licensed, so they can be used in other projects.
>>
>> Of course if copyright holder does not agree to release it on BSD, then
>> it would be fine as exception. Also would be fine from us not to accept
>> such bindings. :)
> 
> I don't hold anything here to use dual-licensing. The only thing I'm
> wondering here is none of the rockchip power includes (which are
> merged) are using dual-licensing they simply have GPL-2.0 which is
> used in BSP.  Let me know what you suggest?

Hm, I think you asked this above and I answered that dual license should
be used. Maybe we misunderstand each other?

Do you include in this header any work which cannot be licensed on BSD
(e.g. is derivative of existing GPL-2 work)?

What other (independent) includes are doing, it's not relevant really.
If they were accepted as single license, then it's a past mistake.

Best regards,
Krzysztof
