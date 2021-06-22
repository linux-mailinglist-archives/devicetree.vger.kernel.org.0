Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B75C3B05EA
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 15:36:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230047AbhFVNjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 09:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbhFVNjB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Jun 2021 09:39:01 -0400
Received: from relay05.th.seeweb.it (relay05.th.seeweb.it [IPv6:2001:4b7a:2000:18::166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5093CC061574
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 06:36:45 -0700 (PDT)
Received: from [192.168.1.101] (83.6.168.10.neoplus.adsl.tpnet.pl [83.6.168.10])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 2E7D33E84E;
        Tue, 22 Jun 2021 15:36:43 +0200 (CEST)
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8994-angler: Disable
 memory@3800000
To:     Petr Vorel <petr.vorel@gmail.com>, linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20210622034408.24904-1-petr.vorel@gmail.com>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
Message-ID: <0cc0b88a-4a38-f74c-313d-e44d9ce1b815@somainline.org>
Date:   Tue, 22 Jun 2021 15:36:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210622034408.24904-1-petr.vorel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I see no reason why reserving memory would make your phone unbootable.

With that, please check your downstream dmesg and look for a line like this:


"<6>[    0.000000] cma: CMA: reserved 36 MiB at 0x0000000003800000 for cont_splash_mem"


This is there for me on both 8994-kitakami and 8992-xiaomi-libra.

Qualcomm devices tend to map "dynamically-allocated" regions to the same addresses every time.


Konrad
