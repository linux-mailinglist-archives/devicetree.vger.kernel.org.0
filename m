Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D9EA301DEB
	for <lists+devicetree@lfdr.de>; Sun, 24 Jan 2021 18:34:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725911AbhAXReG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jan 2021 12:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725948AbhAXReG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jan 2021 12:34:06 -0500
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [IPv6:2001:4b7a:2000:18::167])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 730F7C061573
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 09:33:10 -0800 (PST)
Received: from [192.168.1.101] (abaf224.neoplus.adsl.tpnet.pl [83.6.169.224])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 2EDAF3E8DB;
        Sun, 24 Jan 2021 18:33:08 +0100 (CET)
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8974-klte: add support for display
To:     Luca Weiss <luca@z3ntu.xyz>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Samuel Pascua <pascua.samuel.14@gmail.com>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>
References: <20210124135610.1779295-1-iskren.chernev@gmail.com>
 <20210124135610.1779295-3-iskren.chernev@gmail.com>
 <282b07a1-2e39-2dbe-dd7b-eed2ae9e25fb@somainline.org>
 <6632821.dtBD41K2ms@g550jk>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
Message-ID: <f02b945f-5546-6e15-17b5-74be8af8a501@somainline.org>
Date:   Sun, 24 Jan 2021 18:33:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <6632821.dtBD41K2ms@g550jk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> All msm8974 dts(i) files use this style. Deviating from it for this doesn't 
> make sense. And yes msm8974 should probably be converted to the newer label 
> style (as was done with msm8916 a while ago).

I have a >3k lines commit fixing that. Adding more code that strays from the new style doesn't really help.


Konrad

