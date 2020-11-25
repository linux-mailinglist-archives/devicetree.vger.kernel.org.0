Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7CDD2C37CD
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 05:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727209AbgKYDtk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 22:49:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727136AbgKYDtj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 22:49:39 -0500
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C235C061A4E
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 19:49:39 -0800 (PST)
Received: by mail-pl1-x642.google.com with SMTP id u2so422347pls.10
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 19:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:cc:from:message-id;
        bh=2s7pSbOSgBZ5K/91unjJ3H38zWoh2b/bkBWBvnuBm9Q=;
        b=zrdv1yp4rKdoLGfsBO/AFfCzsrJgCj5x8QXAP9N48Lhplx4UjDBjzIP8/SMwUyJ1zM
         urI093vZxIDXlPw38Z0HDDyxJall15jglmTSZYaWr0pQFxG8j5XPVIICMJFX/8jSJ2zk
         bXqOi9msZmk2uATloqWMVk2fzqDz2EQhWk+WObj2fAx53Dodh9Y5m2syMm7QzXqbaFqr
         DuNHjl1w+Q0T4GuKptSQewa9ZbpXv3eg4fF2BEUCokS1qW8zl+y1WE3j01ct30Qucn6M
         rR55v2TlTJ1CRwz3z9AWKZb/pk++ulsgDaB622/pi5NmG1ZdSuXwGpmvCHeLV7afS6BN
         3jdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:cc:from
         :message-id;
        bh=2s7pSbOSgBZ5K/91unjJ3H38zWoh2b/bkBWBvnuBm9Q=;
        b=XJX+3wJC54uTO8k4/71a7tUPMol2zjU06weyR9tQWCc8ezc5xXmjqDNFjCbCb2rBie
         76JsMUHMRgpyTBQh+82RWxS585E4g3thu7L4LxrjfrbWqtNN3ARFAcey8nlxDjp7bpwu
         kdXQFMybGEuVClOzQTttC5q0iU2TkmGxuhNMVP3RccWCFwmQacaODuYRhSL9Py2AWVfS
         9wN3GjGIIhXYmFyHSjfih2NfGQEQqiuS50kQ93+262mQNSdtYti+MHdFIdDs53bVPwrh
         3fh+Tx73+ptxxgDTdcala6gC9Y9E1liFx7OY1FoIZMhQEDI0KAB15PNaYeoT5buvpS1u
         XHRg==
X-Gm-Message-State: AOAM530q1ZlMxFL9tLgSZcDAl+0Vwlhbe15cJv3YdfYZDxasyKLxJx8Q
        AwxfALHSgNaPiXQ8WfNbdBK3
X-Google-Smtp-Source: ABdhPJxYDH77VvCP+ytyfbqCs2dktrg03AqPGq7LJ7ssjomGj90y31Q8ALpHJXEA/VevlOtKBDn3+w==
X-Received: by 2002:a17:902:aa04:b029:d8:b7a8:6a3e with SMTP id be4-20020a170902aa04b02900d8b7a86a3emr831211plb.58.1606276178833;
        Tue, 24 Nov 2020 19:49:38 -0800 (PST)
Received: from ?IPv6:2409:4072:e89:7d01:15df:2921:8971:b163? ([2409:4072:e89:7d01:15df:2921:8971:b163])
        by smtp.gmail.com with ESMTPSA id j19sm423429pff.74.2020.11.24.19.49.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 19:49:38 -0800 (PST)
Date:   Wed, 25 Nov 2020 09:19:24 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <160627045053.2717324.16519747693186632490@swboyd.mtv.corp.google.com>
References: <20201119072714.14460-1-manivannan.sadhasivam@linaro.org> <20201119072714.14460-2-manivannan.sadhasivam@linaro.org> <160627045053.2717324.16519747693186632490@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: Add SDX55 GCC clock bindings
To:     Stephen Boyd <sboyd@kernel.org>, mturquette@baylibre.com,
        robh+dt@kernel.org
CC:     bjorn.andersson@linaro.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Message-ID: <E796D737-E343-4EDB-BB34-CE6E0295CF3E@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25 November 2020 7:44:10 AM IST, Stephen Boyd <sboyd@kernel=2Eorg> wrot=
e:
>Quoting Manivannan Sadhasivam (2020-11-18 23:27:11)
>> diff --git
>a/Documentation/devicetree/bindings/clock/qcom,gcc-sdx55=2Eyaml
>b/Documentation/devicetree/bindings/clock/qcom,gcc-sdx55=2Eyaml
>> new file mode 100644
>> index 000000000000=2E=2E9d8981817ae3
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sdx55=2Eyaml
>> @@ -0,0 +1,73 @@
>[=2E=2E=2E]
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,gcc-sdx55
>> +
>> +  clocks:
>> +    items:
>[=2E=2E=2E]
>> +      - description: PLL test clock source
>> +
>> +  clock-names:
>> +    items:
>[=2E=2E=2E]
>> +      - const: core_bi_pll_test_se
>
>Is it optional? As far as I know this clk has never been implemented
>because it's a hardware validation thing and not used otherwise=2E

It is implemented in drivers but not used as you said=2E But since it is t=
he parent clk of PLLs I'm not sure we can make it optional=2E=20

Thanks,=20
Mani

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
