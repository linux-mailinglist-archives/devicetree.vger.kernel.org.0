Return-Path: <devicetree+bounces-1042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2277A4752
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8318281FA3
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768793FB2A;
	Mon, 18 Sep 2023 10:32:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C3531A76
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:32:48 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F22C191;
	Mon, 18 Sep 2023 03:32:29 -0700 (PDT)
Received: from localhost.localdomain (unknown [IPv6:2001:b07:646b:e2:e4be:399f:af39:e0db])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laura.nao)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9038D6607079;
	Mon, 18 Sep 2023 11:32:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695033148;
	bh=Uc7V1QnED3jqO7q91bCXab1gBM9VqY9HU30Ul0mVYpA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JzoSEqsNwon3ssPk59x0nv4g1mS0wowA87TrL3zpgUt5sR/z4pW+qKcP3YEAQ2N9B
	 oLPelEgZ/EonnxadFgXEwzAoS/sCA1C3sT+vpR/mgqB/FyjsNHA9M3XOH8WiEaOu+H
	 pwBA7rc7hDe8CKTTqloT2LUtAP59Mc1EEzncYp3tkSP0IH34ttzLDFOyo7nrNUf+ir
	 8nAToLSw9zfHPQ+Lr3cn2rrEBHzohp0KeIqwtGHhLjrlWvyQzrZMcZPAKJZzJHGbgo
	 +JLWocaKSPU7V1h52+BxdugDC8bw8WJ+MTEQEGem2v5A3yDWGaEMD33q57oOIMYYW7
	 K6xx4Hb5u4sEw==
From: Laura Nao <laura.nao@collabora.com>
To: mathieu.poirier@linaro.org
Cc: Project_Global_Chrome_Upstream_Group@mediatek.com,
	andersson@kernel.org,
	angelogioacchino.delregno@collabora.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-remoteproc@vger.kernel.org,
	matthias.bgg@gmail.com,
	robh+dt@kernel.org,
	tinghan.shen@mediatek.com,
	kernel@collabora.com
Subject: Re: [PATCH v17 00/14] Add support for MT8195 SCP 2nd core
Date: Mon, 18 Sep 2023 12:31:41 +0200
Message-Id: <20230918103141.126271-1-laura.nao@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <ZQH2dG+l/dONUsyi@p14s>
References: <ZQH2dG+l/dONUsyi@p14s>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

> Other than patch 2 and 14, I have applied this set.  The remaining patches will
> have to be resent to Matthias.

> Thanks,
> Mathieu

Hello,

With patch 2 missing, the SCP is not probed correctly anymore on asurada (MT8192) and kukui (MT8183). The mtk-scp driver relies on the existence of the `cros-ec-rpmsg` node in the dt to determine if the SCP is single or multicore. Without patch 2 the driver wrongly assumes the SCP on MT8192 and MT8183 are multicore, leading to the following errors during initialization:   

10696 04:33:59.126671  <3>[   15.465714] platform 10500000.scp:cros-ec: invalid resource (null)
10697 04:33:59.142855  <3>[   15.478560] platform 10500000.scp:cros-ec: Failed to parse and map sram memory
10698 04:33:59.149650  <3>[   15.486121] mtk-scp 10500000.scp: Failed to initialize core 0 rproc

The issue was caught by KernelCI, complete logs can be found here:
- asurada: https://storage.kernelci.org/next/master/next-20230914/arm64/defconfig+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt8192-asurada-spherion-r0.html
- kukui: https://storage.kernelci.org/next/master/next-20230914/arm64/defconfig+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt8183-kukui-jacuzzi-juniper-sku16.html

Reporting the issue so that patch 2 and 14 can be resent and merged soon.

Best,

Laura


