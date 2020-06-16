Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF6AF1FC139
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 23:54:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725860AbgFPVyk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jun 2020 17:54:40 -0400
Received: from v6.sk ([167.172.42.174]:48394 "EHLO v6.sk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725773AbgFPVyk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jun 2020 17:54:40 -0400
Received: from localhost (v6.sk [IPv6:::1])
        by v6.sk (Postfix) with ESMTP id E07DC61634;
        Tue, 16 Jun 2020 21:54:38 +0000 (UTC)
From:   Lubomir Rintel <lkundrak@v3.sk>
To:     Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 0/3] phy: Add USB HSIC PHY driver for Marvell MMP3 SoC
Date:   Tue, 16 Jun 2020 23:54:32 +0200
Message-Id: <20200616215435.987899-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

please consider applying this patch set. It adds the HSIC PHY driver for
Marvell MMP3 along with related DT binding changes.

Compared to v2, the Reviewed-by/Acked-by tags for DT patches have been
collected.

Thank you,
Lubo





