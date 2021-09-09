Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9E02405C90
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 20:05:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237229AbhIISGa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 14:06:30 -0400
Received: from relay08.th.seeweb.it ([5.144.164.169]:55589 "EHLO
        relay08.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243341AbhIISG2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 14:06:28 -0400
Received: from IcarusMOD.eternityproject.eu (unknown [2.237.20.237])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 409213EBAE;
        Thu,  9 Sep 2021 20:05:13 +0200 (CEST)
Subject: Re: [PATCH v2] arm64: dts: qcom: pmi8998: Add node for WLED
To:     bjorn.andersson@linaro.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, konrad.dybcio@somainline.org,
        marijn.suijten@somainline.org, martin.botka@somainline.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        paul.bouchara@somainline.org
References: <20210909123628.365968-1-angelogioacchino.delregno@somainline.org>
From:   AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Message-ID: <562d931e-b267-89e5-3c8f-1f075897bed4@somainline.org>
Date:   Thu, 9 Sep 2021 20:05:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210909123628.365968-1-angelogioacchino.delregno@somainline.org>
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Il 09/09/21 14:36, AngeloGioacchino Del Regno ha scritto:
> The PMI8998 PMIC has a WLED backlight controller, which is used on
> most MSM8998 and SDM845 based devices: add a base configuration for
> it and keep it disabled.
> 
> This contains only the PMIC specific configuration that does not
> change across boards; parameters like number of strings, OVP and
> current limits are product specific and shall be specified in the
> product DT in order to achieve functionality.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>

P.S.: I forgot to add a note to this patch. The reason for sending a v2
is that in v1 I had a bad signoff (was using my old email).

