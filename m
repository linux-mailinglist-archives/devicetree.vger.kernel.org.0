Return-Path: <devicetree+bounces-304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E4E7A0E61
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 893B0281C3E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 19:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F2DE266A9;
	Thu, 14 Sep 2023 19:32:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BE621116
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:32:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B9ABC433C7;
	Thu, 14 Sep 2023 19:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694719958;
	bh=fKyYS2g33geFkbUD2j4K3fVgYEq20z/18T1pFUnsuP8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pxnentepc2SbybFP7Hkgd2xQwe7Qacd6E6aJgOfmOwEeb/qctw6zrPzQacJFqG3sc
	 ku89qhMijGWki0kIwERCgIInqr1Vdu1d3qvLOJC6TVRigI98zfhhuFj34z8jglKgK4
	 /72xPv6BapxAteLUPAQuaYuSF/uBdnOh+ZVJ3CYuuqCoTjH+6orX2b2mX2RhLP2ee0
	 IXmdkmdJEYz6lf3dyOJiDqtfHilaFRLPdsh4fOVnS9aQ3iNLvsuBjS8g5MufoY5q/3
	 D6BzbZcmWt5rNL+gPE7Aafwv5z039Cgj+eBpMAQFYUs9/upE48ump4rCPXvjiGbTUT
	 MYpdzsYzuAfFQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 00/11] arm64: qcom: add and enable SHM Bridge support
Date: Thu, 14 Sep 2023 12:36:39 -0700
Message-ID: <169472019836.1902897.1391606385902193970.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
References: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 28 Aug 2023 21:24:56 +0200, Bartosz Golaszewski wrote:
> SHM Bridge is a mechanism allowing to map limited areas of kernel's
> virtual memory to physical addresses and share those with the
> trustzone in order to not expose the entire RAM for SMC calls.
> 
> This series adds support for Qualcomm SHM Bridge in form of a platform
> driver and library functions available to users. It enables SHM Bridge
> support for three platforms and contains a bunch of cleanups for
> qcom-scm.
> 
> [...]

Applied, thanks!

[01/11] firmware: qcom-scm: drop unneeded 'extern' specifiers
        commit: 2758ac3a11d78af56e6969af04dec611806a62de
[02/11] firmware: qcom-scm: order includes alphabetically
        commit: bc7fbb5ea701b22c09c0fa5acbc122207283366a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

