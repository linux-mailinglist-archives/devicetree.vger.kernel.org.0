Return-Path: <devicetree+bounces-287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C267C7A0A29
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D94628228D
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E552420B2A;
	Thu, 14 Sep 2023 16:00:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBBEC1D523
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:00:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03E94C433C8;
	Thu, 14 Sep 2023 16:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707244;
	bh=s5eKT9LyYQ04iLn5WzeyeRWddRgwEAzl0R57g4chGYE=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Q86ackW4mHDmCq1G3Ni6UfPswm6geToODxi7/rEQGRIneXHYdX0ak3AANS+RZ+DyB
	 7uJEbhCB4N0pTTiVPT6v++QKocqWk7GcxH/PyKpe44GAiQkIaqoDkKJZrL8uh6RSyJ
	 FCXoRSm2sAZloKnr5TUkmBjdUtm7zsIjj4ipz4xItE1TeAlUzel8OOZedoRAz1cFbE
	 1Z1Qt35NQNrqAnxrrgD9JjTNpcnwaH9EaYAkaDpy4Ls0CQ5zDvQGtQwZXrQsfPdvF1
	 JBq33jpqIo9b/dwSwSUhFYVXGV6GWQPTKq/G/vtDV5TEBarTo5tXSxDputV8ezjvrq
	 ywdmuBowpGVHA==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Robert Marko <robimarko@gmail.com>
Subject: Re: (subset) [PATCH 1/2] dt-bindings: arm: qcom,ids: Add IDs for IPQ8174 family
Date: Thu, 14 Sep 2023 09:04:32 -0700
Message-ID: <169470744881.681825.5161252914219672681.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230901181041.1538999-1-robimarko@gmail.com>
References: <20230901181041.1538999-1-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 01 Sep 2023 20:10:04 +0200, Robert Marko wrote:
> IPQ8174 (Oak) family is part of the IPQ8074 family, but the ID-s for it
> are missing so lets add them.
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: qcom,ids: Add IDs for IPQ8174 family
      commit: b8c889bef9797a58b8b5aad23875cc4d04b3efd3
[2/2] soc: qcom: socinfo: Add IDs for IPQ8174 family
      commit: e9104e73d4fc8a023608be9c18ee1b897d0ccb14

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

