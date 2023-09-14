Return-Path: <devicetree+bounces-292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9ED7A0ACC
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:30:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8A4E281E05
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C63224E7;
	Thu, 14 Sep 2023 16:30:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D6C28593
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0C7FC433C7;
	Thu, 14 Sep 2023 16:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694709018;
	bh=nhzaDPtDjFNbPiCIGqGrvXSRv8u+mkX5rY5cXHPXIyg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Dm8BJHKO+oN1VPX59fBzNz5hbhtgnQTaYqEzNlqiHyg3/Q+TebdGXj2DcI3a2WO0g
	 fU84tjCBbCgehDqn8bZsOzcN6mjV67vc6lQGVnjKjIEjyWUkvC/WYSeG92GE57jAfx
	 dLdWUBX6itACTWdaC6jc15D9ZzLhfEDJCB6mhMx7W5siky4FI4y4Lp+d+c768DN8pn
	 ZIBGMA8/MRfKmtLIKrWK6dZBnrH5jZBhEQjFtbkOj0LZ8egKX7zfgAr3R3Gn2rENu0
	 FnbUZit7JL1A230nO7ifdOsD0kPVrWYqXd5lAtBQI3nhob61IGES8GJpGBXsX4V7ku
	 3geRAMW/3X15Q==
Message-ID: <580f3934ab1171e27d785db7362c342d.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <9952fa20-a27f-3240-cc49-5c5109febfc1@quicinc.com>
References: <20230901091823.30242-1-quic_luoj@quicinc.com> <20230901091823.30242-5-quic_luoj@quicinc.com> <27ae3297ad161fd67706db70b402db04.sboyd@kernel.org> <16d09acf-7bdd-04ee-6faf-936c0366df03@quicinc.com> <17681a9f756cc70a190c674c51b90140.sboyd@kernel.org> <5a4805f7-f802-b1ba-9804-59c0fe6c7f26@quicinc.com> <92058c25fb11b75ee0a2298a684825e9.sboyd@kernel.org> <f67b354c-8a4b-49f5-6275-66b7d614301a@quicinc.com> <82adb75659e0d278e25b65b0e81df99a.sboyd@kernel.org> <9952fa20-a27f-3240-cc49-5c5109febfc1@quicinc.com>
Subject: Re: [PATCH v6 4/4] clk: qcom: add clock controller driver for qca8386/qca8084
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_srichara@quicinc.com
To: Jie Luo <quic_luoj@quicinc.com>, agross@kernel.org, andersson@kernel.org, catalin.marinas@arm.com, conor+dt@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, p.zabel@pengutronix.de, robh+dt@kernel.org, will@kernel.org
Date: Thu, 14 Sep 2023 09:30:15 -0700
User-Agent: alot/0.10

Quoting Jie Luo (2023-09-12 20:27:25)
>=20
>=20
> On 9/13/2023 1:18 AM, Stephen Boyd wrote:
> > Quoting Jie Luo (2023-09-12 05:07:02)
> >>
> >> and freq_tbl are necessary to this clock.
> >=20
> > I still don't see why the freq_tbl is necessary.
>=20
> Hi Stephen,
> For clk_rcg2_ops, freq_tbl is used to find the closest rate to decided=20
> the parent clock, the configuration of clock source and clock divider=20
> are saved in the freq_tbl to configure the RCG hardware register, the=20
> mapping of parent clock and hardware register value is decided by the=20
> freq_tbl for the RCG clock.

The divider is always 1. The frequency is the frequency of the parent.
The two pieces of information are already known without the frequency
table. Why is it needed?

