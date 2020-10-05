Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81643283900
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 17:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727100AbgJEPFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 11:05:40 -0400
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:33815 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726398AbgJEPFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 11:05:39 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 3F15D580397;
        Mon,  5 Oct 2020 11:05:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 05 Oct 2020 11:05:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm1; bh=jhIHshhXU/XQiBzYzWAWXfs8v6
        DPWe98K8qTnZwq800=; b=Ganl+Mn7cr+SDvE6dtRo5E30teRyKpogZSo+xY825/
        pqzlwVm/BluM0yHkrtv88JHlPc97PerQ4mO1dDib1/94kmsCxvv0Sfk21QYbMb5m
        1Ix2jrwowpmrbm6KBA/6f1RiekC1kv/DB23USXhtG2IwAFe17FggzKbXtOZG7jd7
        50IFR/fwxEqjvTVYxfcUCgNJyW1SvNGHkxW5x7K/NO1l4aHGW+tmm+ewKAR1eaDj
        UMiDiwoCkWyO1UDp1/BX5fp9WK13bFbyS3BBfccFjb14rfw9qLEzEyG3DK24GNIm
        c5hMevtI5LFna26GA5IyvGFTDNZjoT+GU/oSd9c0ZWyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=jhIHshhXU/XQiBzYz
        WAWXfs8v6DPWe98K8qTnZwq800=; b=inkivsASwcGpB5avk0O6LA7/wGwz6nsXt
        EZT2mn8RnCrFc2gIvwsXjAr2Y9ioH16EA/IKB2wMgEUjDhX1XofQ1DeM8hlTGRIw
        T96nJGr3EJK/4dK/d9X9/UB5QBvt14qXhRgvo26CDzKfar1qaxwWCSQCW6YWDXlF
        XbELm4A38MAx45YfkOKriS8qoKrk2he1eMCav76Njd6prbACPxmlHSCZrWW+0v+k
        bLpxOBrNto/LVK43FysrBgg+iCLrvA2QuxunGg1oLtsmMycokz8WDpsSfyOt1x1I
        Bpi5oAKptAMRznciwOcJ9FXopIK2uZBxXt5is12A+7a9lF+0pLLCg==
X-ME-Sender: <xms:QDZ7X3BRnRfuEuoLi1Ju2C8p_z87-kmrQ2_l2Niy49wih9yeYyOaMw>
    <xme:QDZ7X9hoXOCZbVSeCAffdsfvm43RnXoEDLUSpu5VMTOK4kGWn5RQeUZCNXVkkLLO_
    Es0Oow_TxEMGbvN0MY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgedvgdekiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
    hnpeejffehuddvvddvlefhgeelleffgfeijedvhefgieejtdeiueetjeetfeeukeejgeen
    ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QDZ7XykMC3yR9TzGijcudL7QctCE7VFRD86MF5-1nZVcihUBXzRA3Q>
    <xmx:QDZ7X5xvUMZaErO5jFUQrVH3O4xNGiI5NBWHguGc7GaEvClsQm_jjw>
    <xmx:QDZ7X8RxmRwIWFxQumV9kfR_MlPticsQyBSHUI7yhlFlFL832ac0Fw>
    <xmx:QjZ7XxL9DxNvm8IGvIforTIgfz-oBhFEPZQpx4mI29HgZZQEDOJOGw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 4E153328005E;
        Mon,  5 Oct 2020 11:05:36 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        dri-devel@lists.freedesktop.org
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/6] drm/sun4i: Add support for dual-link LVDS on the A20
Date:   Mon,  5 Oct 2020 17:05:28 +0200
Message-Id: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910147.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This is a second attempt at supporting the LVDS dual-link output on the
Allwinner A20.

Let me know what you think,
Maxime

Changes from v2:
  - Added the DT binding description
  - Split the patch to enable the A20
  - Reworked a bit the error messages

Changes from v1:
  - Reworked the DT bindings
  - Refactored a bit the panel registration in the tcon code.

Maxime Ripard (6):
  drm/of: Change the prototype of drm_of_lvds_get_dual_link_pixel_order
  dt-bindings: display: sun4i: Add LVDS Dual-Link property
  drm/sun4i: tcon: Refactor the LVDS and panel probing
  drm/sun4i: tcon: Support the LVDS Dual-Link
  drm/sun4i: tcon: Enable the A20 dual-link output
  [DO NOT MERGE] ARM: dts: sun7i: Enable LVDS Dual-Link on the Cubieboard

 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml |   6 +++-
 arch/arm/boot/dts/sun7i-a20-cubieboard2.dts                             |  69 ++++++++++++++++++++++++++++++-
 drivers/gpu/drm/drm_of.c                                                |  98 +++++++++++++++++++++----------------------
 drivers/gpu/drm/rcar-du/rcar_lvds.c                                     |   8 +---
 drivers/gpu/drm/sun4i/sun4i_tcon.c                                      | 163 +++++++++++++++++++++++++++++++++++++++++-------------------------------
 drivers/gpu/drm/sun4i/sun4i_tcon.h                                      |   4 ++-
 include/drm/drm_of.h                                                    |  16 +++++--
 7 files changed, 236 insertions(+), 128 deletions(-)

base-commit: d113dbba9a18f9ac71edb1a66ae552c9407355f4
-- 
git-series 0.9.1
