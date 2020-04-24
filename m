Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 965D31B81E2
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2020 00:11:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726031AbgDXWLd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Apr 2020 18:11:33 -0400
Received: from v6.sk ([167.172.42.174]:59624 "EHLO v6.sk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725874AbgDXWLd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Apr 2020 18:11:33 -0400
Received: from localhost (v6.sk [IPv6:::1])
        by v6.sk (Postfix) with ESMTP id 953AC610A8;
        Fri, 24 Apr 2020 22:11:29 +0000 (UTC)
From:   Lubomir Rintel <lkundrak@v3.sk>
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] mfd: Add ENE KB3930 Embedded Controller driver
Date:   Sat, 25 Apr 2020 00:11:21 +0200
Message-Id: <20200424221123.106527-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

please take a look at the following patch set and consider applying it
to the MFD tree. It a new driver with DT binding documentation changes,
utilized by the LED driver submitted here:

https://lore.kernel.org/lkml/20200424220240.106055-1-lkundrak@v3.sk/

Compared to v1 the dt-bindings validation failure has been fixed.

Thanks,
Lubo


