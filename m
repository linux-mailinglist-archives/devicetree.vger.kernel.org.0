Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39ACC2F8861
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:24:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726556AbhAOWYH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:24:07 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:51810 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726352AbhAOWYH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:24:07 -0500
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8D50258B;
        Fri, 15 Jan 2021 23:23:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1610749405;
        bh=B2mz6MMvaGp8Xos5MQEnbg4TxqpDEXLEWFqhOdeS5Uk=;
        h=From:To:Cc:Subject:Date:From;
        b=iifkKyK33Kr0Gky6TVO+xmyrJ90knbZT8Davai2qsnXAO2BnNsMzdzQVndLfQJule
         QtpeOvZqYHRdeUDuHIkKqTJnRuiM2W/UPI2Z7EIJO4OzNMrVRUz/D1G0fIVBjseVWJ
         MfKzQuPOI3SIXFMe3k2rNLrMKM1/02vGXYaXIH74=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v3 0/3] dt-bindings: display: Convert mxsfb DT bindings to YAML
Date:   Sat, 16 Jan 2021 00:23:01 +0200
Message-Id: <20210115222304.5427-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patch series has previously been posted as part of "[PATCH v2 0/7]
drm: mxsfb: Allow overriding bus width". I've split the DT bindings
conversion to a separate series as I believe they're ready, and Martin
has a patch that he would like to submit to the bindings.

All the patches have been acked, and changes to v2 are minor. Rob, could
you take this through your tree ?

Laurent Pinchart (2):
  dt-bindings: display: mxsfb: Convert binding to YAML
  dt-bindings: display: mxsfb: Add and fix compatible strings

Marek Vasut (1):
  dt-bindings: display: mxsfb: Add compatible for i.MX8MM

 .../bindings/display/fsl,lcdif.yaml           | 110 ++++++++++++++++++
 .../devicetree/bindings/display/mxsfb.txt     |  87 --------------
 MAINTAINERS                                   |   2 +-
 3 files changed, 111 insertions(+), 88 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/fsl,lcdif.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/mxsfb.txt

-- 
Regards,

Laurent Pinchart

