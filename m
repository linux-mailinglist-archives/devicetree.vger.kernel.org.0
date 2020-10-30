Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E22F02A0B57
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 17:40:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726440AbgJ3QkG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 12:40:06 -0400
Received: from hqnvemgate25.nvidia.com ([216.228.121.64]:12437 "EHLO
        hqnvemgate25.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726072AbgJ3QkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 12:40:06 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f9c41e70000>; Fri, 30 Oct 2020 09:40:07 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Oct
 2020 16:40:05 +0000
Received: from audio.nvidia.com (172.20.13.39) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1473.3 via Frontend
 Transport; Fri, 30 Oct 2020 16:40:03 +0000
From:   Sameer Pujar <spujar@nvidia.com>
To:     <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
CC:     <p.zabel@pengutronix.de>, <kuninori.morimoto.gx@renesas.com>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH v2] Convert graph bindings to json-schema
Date:   Fri, 30 Oct 2020 22:09:15 +0530
Message-ID: <1604075956-17010-1-git-send-email-spujar@nvidia.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1604076007; bh=3ee7nEM4cRH0x38uyFPv64bYBCEWJ1weTPZG/oAdJc4=;
        h=From:To:CC:Subject:Date:Message-ID:X-Mailer:MIME-Version:
         Content-Type;
        b=rMKIJl68gIukFXqTGcUwbFoPbCbaJxeix/GKTK60dRZXIvFGg7bbScxgsUmru2XwH
         1CYgtTABSCs0LbM1B5C6Fw5f52/GukT8/K+nqaAdd3OVCB/JArAkItnFxWbgmNEeIw
         u7uIzc4Z0h48fWLToQUnUZ1a54+kl+6z/KFqgT1RIFdYLlaCghq0Nshyw0PaHMRdGu
         QDl4x3wETK+gE0puUNxRuarvS+K2puTXMGLyZXazzXTgAdx9BZoF0BMr3RFnIky5ml
         oFKAyeHIVdjmISN0I+tbihMZ3UnEdqTcZD02coBfcKRfN+NxpEBoLrXvWz3d80JU6+
         fkzJqRYH/TBrA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move graph bindings to json-schema and thus convert graph.txt to
graph.yaml. The graph.txt is currently referenced in many files and
for now graph.txt re-directs reference to graph.yaml.

Changelog
=========

v1 -> v2
--------
 * Dropped "[PATCH 2/2] dt-bindings: Use graph.yaml reference in docs"
 * [PATCH 1/2] is modified to retain graph.txt file for now and added
   re-direction to graph.yaml

Sameer Pujar (1):
  dt-bindings: Convert graph bindings to json-schema

 Documentation/devicetree/bindings/graph.txt  | 129 +-----------------
 Documentation/devicetree/bindings/graph.yaml | 188 +++++++++++++++++++++++++++
 2 files changed, 189 insertions(+), 128 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/graph.yaml

-- 
2.7.4

