Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 63B5D14464A
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2020 22:14:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728829AbgAUVO0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jan 2020 16:14:26 -0500
Received: from asavdk4.altibox.net ([109.247.116.15]:50902 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728741AbgAUVO0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jan 2020 16:14:26 -0500
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id DB0918046C;
        Tue, 21 Jan 2020 22:14:22 +0100 (CET)
Date:   Tue, 21 Jan 2020 22:14:21 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc:     devicetree@vger.kernel.org
Subject: OK to relicense text from display-timings.txt?
Message-ID: <20200121211421.GA15494@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=kj9zAlcOel0A:10 a=OLL_FvSJAAAA:8 a=qQPVYyUM8IyVlXGYbJEA:9
        a=CjuIK1q_8ugA:10 a=8DhCAJCroecA:10 a=6buWsS4PrYQA:10
        a=oIrB72frpwYPwTMnlWqB:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Steffen/Philipp.

In commit:
cc3f414cf2e404130584b63d373161ba6fd24bc2 ("video: add of helper for display timings/videomode")

You added display-timings.txt - which include a nice drawing that explains
the timing signals.

I am working on a DT schema variant of the same - see:
https://www.spinics.net/lists/devicetree/msg331526.html

In the revised version the preferred license is:
(GPL-2.0-only OR BSD-2-Clause)

Is it OK to re-license to (GPL-2.0-only OR BSD-2-Clause) in the
DT schema variant?


Hi Peter.

You contributed with following patch:
86f46565dff313a149b4bd09d4a8655274ef8f33 ("dt-bindings: display: display-timing: Add property to configure sync drive edge")

Part of the text is re-used in the panel-timing.yaml file.
OK to relicense?


Hi Laurent.

You contributed the following patch:
9cad9c95d7e8d6d61d8c9729e0b6bbd18f47d86d ("Documentation: DocBook DRM framework documentation")
This patch added a nice timing diagram - which Daniel Vetter later moved to drm_modes.h.

The timing diagram is re-used in panel-timing.yaml.
As the original author are you OK that this is relicensed?


Note: I need positive reply from all of you to re-license.
In case I get it your postive feedback it will be documented in
the commit message for panel-timing.
To keep a record for the background for the re-licensing.

	Sam
