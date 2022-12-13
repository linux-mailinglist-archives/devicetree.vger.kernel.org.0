Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5213C64BBCD
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 19:19:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235025AbiLMSTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 13:19:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236149AbiLMSTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 13:19:41 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C07EB6F
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1670955538;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=IB2xWWEhlxjxvd5E16+7UlIAcdyRYrIeQUS+dQ8G5as=;
        b=B4k/NCHeb59cJ9kuUddtd5HTzSuKXY8EuJBaXVLZ007DkJ+1eCbuOV4thyFM5NEGOJRTMF
        jBD9fJV9sO+m7Tnc53AqZy6RYJxB6g88uePRxVUWLN+1knECpPOyTlIQaXzKXGb85kZnrq
        pdXP5jLfrJQgpg+1OFGm9vOd6nq93V4=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-516-t9hWaqVeOMO4GeTMv9CtRQ-1; Tue, 13 Dec 2022 13:18:57 -0500
X-MC-Unique: t9hWaqVeOMO4GeTMv9CtRQ-1
Received: by mail-qt1-f197.google.com with SMTP id fz10-20020a05622a5a8a00b003a4f466998cso396657qtb.16
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:18:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IB2xWWEhlxjxvd5E16+7UlIAcdyRYrIeQUS+dQ8G5as=;
        b=AFDr1vZ1Ps7yYS8XBlE9hvjSMPw0cc9r6xFEHT1ifOnj/xbcmZVg9km+4U7Jm7K3ij
         6C8fh2tlA/hxa0oF3v1e7MPGoyRd+lsW1RXX0HJwGv4QIsLYflFDLUgINoHvRHk+Z3if
         a7NlDq5j7JUkvrBgJSTdJ2Rb0Vlu8/DP9Ky9ipD8jx+J32rlidQy/9mXROym+/Y9oqKF
         UDLy5ulCtX+3IxhfKUbA/p0g7zeriSk5i9e7M1kQsyAX7qJOMBefxZb09qkqQ6/qQN9R
         R4XzTghosSafAM4/gaU/DPAgI4ur0VJDFDrBROhU0RFM/yg5S/XIS0ihMtr92vpNyGS2
         /prw==
X-Gm-Message-State: ANoB5pn/cZtkLKobf4/iyFxt2zpc9KAkMKvZ7QICaKtAYKwspXU2jhy1
        WsXWAUYc2tA6PqA0WIHEo5gIZmD1WP/giK3w17YQ4doZXXkWDuvrwezAmrr8KocNqQiIqZdL3eX
        Qca8DnKB5XW5z09ezxBzcyg==
X-Received: by 2002:ac8:4601:0:b0:3a7:fc39:6cd with SMTP id p1-20020ac84601000000b003a7fc3906cdmr6098305qtn.10.1670955536921;
        Tue, 13 Dec 2022 10:18:56 -0800 (PST)
X-Google-Smtp-Source: AA0mqf454Nj/rmnIAteUanUGwEzqlFebZfbSW1z6x3zce+VTz1RN6aooF8g678jM0uM+cBNWpgunqA==
X-Received: by 2002:ac8:4601:0:b0:3a7:fc39:6cd with SMTP id p1-20020ac84601000000b003a7fc3906cdmr6098280qtn.10.1670955536668;
        Tue, 13 Dec 2022 10:18:56 -0800 (PST)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id y3-20020ac85243000000b00398313f286dsm281671qtn.40.2022.12.13.10.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 10:18:56 -0800 (PST)
Date:   Tue, 13 Dec 2022 13:18:55 -0500
From:   Eric Chanudet <echanude@redhat.com>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: pm8450a: add rtc node
Message-ID: <20221213181855.ylkb3dglw3bkwor5@echanude>
References: <20221213005539.1133443-1-echanude@redhat.com>
 <219F5CF2-BA91-4749-A32C-84BCF541ECE0@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <219F5CF2-BA91-4749-A32C-84BCF541ECE0@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 13, 2022 at 04:18:00AM +0300, Dmitry Baryshkov wrote:
> >diff --git a/arch/arm64/boot/dts/qcom/pm8450a.dtsi b/arch/arm64/boot/dts/qcom/pm8450a.dtsi
> >index 34fc72896761..af761dbfbc66 100644
> >--- a/arch/arm64/boot/dts/qcom/pm8450a.dtsi
> >+++ b/arch/arm64/boot/dts/qcom/pm8450a.dtsi
> >@@ -13,6 +13,14 @@ pm8450a: pmic@0 {
> > 		#address-cells = <1>;
> > 		#size-cells = <0>;
> > 
> >+		rtc@6000 {
> >+			compatible = "qcom,pm8941-rtc";
> >+			reg = <0x6000>;
> >+			reg-names = "rtc", "alarm";
> >+			interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
> 
> 
> 0x60?

Checking downstream it uses 0x61 for the ppid. This is also the case
for all other descriptions of that RTC I could find. On the other hand,
that does not describe the "alarm" register bank at 0x6100.
Should it be added, if anything to match reg-names?

I tried a quick test of the alarm on sa8540p-ride:
$ echo $(date '+%s' -d '+ 10 seconds') > /sys/class/rtc/rtc0/wakealarm
It logged the interrupt:
172:          3          0          0          0          0          0          0          0  pmic_arb 101777441 Edge      pm8xxx_rtc_alarm

-- 
Eric Chanudet

