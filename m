Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF6A02F8AEA
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 04:03:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729512AbhAPDDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 22:03:04 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:31860 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729511AbhAPDDE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 22:03:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610766183; x=1642302183;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qxloxdu4+6mNAVLc3Bzt9GezIpBIa3bgx60M63OKmGg=;
  b=N5v8Ye1W5a7MTg8C5oWtd5OdK9t1HbMZIhsKta4xgIfVeo7UWPmeF5DJ
   fjqCtN7ZsnDllLVIdQPcd+rFNEBedJvz+U31HQIqAeUzhJgWXJ94C2WR9
   Ymzy8AWcNSNOtJ8ASQ08QhPNkxUKFxu3EVDStF7yKO7+0LRvlRQrBCfu8
   PSYzcJX0E8nMP9DLKub5xRANETD+cKCszs48dBj0FzHGHkTuK7eEK/SBI
   behs0Oj1BdBhdnOoi3/C8ZEBRvQTwd8hIODDk2YCtf5Qk0PEIdEtBKIxM
   KdKrRJO5Jt56wcZk9o09CNfhPXKYo6T7ZKxPqrfICfIHQ/iLuriCJOD56
   A==;
IronPort-SDR: L+NNn9DdgvoL2NJ7YVZe1+6eNgeceWKj7JPumcqx0ZHQeuH2nw2dOwgBbc0W9E9uAx4FiS4PLJ
 42h5QXkRku9cW0E0RluFKpf9ZXVT46OC4imLXgmCYyzFroamWXxwyHfoB9kC8E4ZA1AVNGkZaA
 EeTVfzk7xtE1UOGB6DnhSQOGUt+9jgIqHCXZbh16gfLWNnXK0kpbhWgbVl8wanr0NqhDf31/y7
 AUS2DAylW3XzmZ7mwv5GQbyrcjZ7b+A1oUJ2eCZqHZkxAAXC+XEBHeHiyfHT7axSwwj224jFAT
 Q6o=
X-IronPort-AV: E=Sophos;i="5.79,351,1602518400"; 
   d="scan'208";a="157556789"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 16 Jan 2021 11:01:58 +0800
IronPort-SDR: 7Ap8mumVhrRpTZKv9TKyRq93CACfCdc9UZOaM7zBb0t+LPhPFD1U82BiyRSGN7sDqBZVb9IiF0
 bYMdunOalWOeOoUuSW5g0R5uoxQBadjzhwrNOglXaS9v6tkh4WavZ8eILD021PrkUKbW1W+/SV
 Obe1nFABbSZ6xgY8Fr1c2xFwjECdJbALNBYqIDlNq1CMIdfCIDIDBJat090goW/lDfF97DcN6M
 vJZJUjxhKQPVplU1ttvpdJDHh8dpvXZbeY3E2LhYKQUK/Rp3TvUu+0TO/x+1jTdDoAgpFV9QE+
 vWzAVbEXU+aekoUuGqpj8IMe
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 18:44:40 -0800
IronPort-SDR: C7DPZPyRYx9MzGcaKHEPBOiraEEiw2IVQBPNIB8kkJOLaWf46MLiorlqdUC1MaGAdWEluu5mmp
 Ds1ubUVOZ1gNQXF/3xMbg0T94IlwBB2dB+efNPHBUVqcGTHzitQqfaQDXi+sobTLRVsGU+TgsO
 7tsBF4B4ESKjlPe0sScYUMu2+/yJgmNFWtppWwIXp3R+7/+fV2VG5HKioujugDtRhN/ILT4Khz
 fFQHdWE7rmg+cKYSdEG+sZjZXu81B81N/giPcwPP25fn1TJrL73DgxSeRoa89BgHLa1k4ysaT1
 AEU=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 19:01:58 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 0/2] Fix dtbs_check warnings
Date:   Sat, 16 Jan 2021 12:01:54 +0900
Message-Id: <20210116030156.15726-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

A couple of patches to fix make dtbs_check warnings about identation.

Thanks !

Damien Le Moal (2):
  dt-bindings: Fix sparcx5-sgpio pinctrl warning
  dt-bindings: Fix mt8192-mt6359-rt1015-rt5682 warning

 .../devicetree/bindings/pinctrl/microchip,sparx5-sgpio.yaml   | 4 ++--
 .../bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml           | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.29.2

