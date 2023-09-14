Return-Path: <devicetree+bounces-100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A04A79FC65
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:55:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2C9DB20AB2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFF766137;
	Thu, 14 Sep 2023 06:55:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4ABE612E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:55:22 +0000 (UTC)
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 684DCCCD;
	Wed, 13 Sep 2023 23:55:21 -0700 (PDT)
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id 676831C3D96;
	Thu, 14 Sep 2023 08:55:18 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on abscue.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	autolearn_force=no version=4.0.0
Received: from fluffy-mammal.fritz.box (dslb-092-072-000-199.092.072.pools.vodafone-ip.de [92.72.0.199])
	by srv01.abscue.de (Postfix) with ESMTPSA id 044411C0119;
	Thu, 14 Sep 2023 08:55:17 +0200 (CEST)
From: =?UTF-8?q?Otto=20Pfl=C3=BCger?= <otto.pflueger@abscue.de>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	=?UTF-8?q?Otto=20Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH v3 0/3] pmdomain: qcom: rpmpd: Add MSM8917 and similar SoCs
Date: Thu, 14 Sep 2023 08:54:20 +0200
Message-Id: <20230914065422.5452-1-otto.pflueger@abscue.de>
X-Mailer: git-send-email 2.39.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add RPM power domain definitions for the Qualcomm MSM8917, MSM8937 and
QM215 SoCs. These SoCs all have the same power domains (VDDCX and VDDMX
in voltage level mode), but different regulators are needed for QM215
because it is used with a PM8916 PMIC instead of a PM8937 PMIC.

---
Changes in v3:
- Sort compatibles in device tree binding documentation (suggested by
  Krzysztof)
- Rebase on latest next with genpd subsystem renamed to pmdomain
Changes in v2:
- Fix typo in patch description: VDDMD -> VDDMX
- Split MSM8917 and QM215 changes (suggested by Konrad)
- Remove redundant qcom,msm8937-rpmpd entry from rpmpd_match_table
  and use a fallback compatible instead (suggested by Konrad)

Otto Pflüger (3):
  dt-bindings: power: rpmpd: Add MSM8917, MSM8937 and QM215
  pmdomain: qcom: rpmpd: Add MSM8917 power domains
  pmdomain: qcom: rpmpd: Add QM215 power domains

 .../devicetree/bindings/power/qcom,rpmpd.yaml | 79 ++++++++--------
 drivers/pmdomain/qcom/rpmpd.c                 | 91 +++++++++++++++++++
 include/dt-bindings/power/qcom-rpmpd.h        | 21 +++++
 3 files changed, 155 insertions(+), 36 deletions(-)


base-commit: 98897dc735cf6635f0966f76eb0108354168fb15
-- 
2.39.1

