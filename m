Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7648C2E83FB
	for <lists+devicetree@lfdr.de>; Fri,  1 Jan 2021 15:33:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726974AbhAAOdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jan 2021 09:33:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726747AbhAAOdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jan 2021 09:33:09 -0500
Received: from m-r1.th.seeweb.it (m-r1.th.seeweb.it [IPv6:2001:4b7a:2000:18::170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB315C061573
        for <devicetree@vger.kernel.org>; Fri,  1 Jan 2021 06:32:13 -0800 (PST)
Received: from [192.168.1.101] (abac131.neoplus.adsl.tpnet.pl [83.6.166.131])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id F093B1F4E1;
        Fri,  1 Jan 2021 15:32:08 +0100 (CET)
Subject: Re: [PATCH] arm64: dts: qcom: c630: keep both touchpad devices
 enabled
To:     Shawn Guo <shawn.guo@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20210101022451.21882-1-shawn.guo@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
Message-ID: <ecc0ce97-742b-752e-0030-d1c4169c6f24@somainline.org>
Date:   Fri, 1 Jan 2021 15:32:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210101022451.21882-1-shawn.guo@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,


it seems like by doing so you're overwriting the I2C host pinctrl, so (unless that's intentional) the more correct fix would be:


pinctrl-0 = <&qup_i2c3_default &i2c3_hid_active>;


Konrad

