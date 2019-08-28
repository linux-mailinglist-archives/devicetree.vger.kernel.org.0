Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AEFAD9FB9C
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 09:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726272AbfH1H04 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 03:26:56 -0400
Received: from shell.v3.sk ([90.176.6.54]:40183 "EHLO shell.v3.sk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726154AbfH1H04 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 03:26:56 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.v3.sk (Postfix) with ESMTP id 8C89BD8306;
        Wed, 28 Aug 2019 09:26:51 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
        by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id ftl1s15vkSgc; Wed, 28 Aug 2019 09:26:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.v3.sk (Postfix) with ESMTP id DCA08D8302;
        Wed, 28 Aug 2019 09:26:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
        by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id BoGToDdy7W23; Wed, 28 Aug 2019 09:26:36 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com [213.175.37.10])
        by zimbra.v3.sk (Postfix) with ESMTPSA id A9E28D82F4;
        Wed, 28 Aug 2019 09:26:35 +0200 (CEST)
From:   Lubomir Rintel <lkundrak@v3.sk>
To:     Olof Johansson <olof@lixom.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>
Subject: [PATCH v3 0/6] ARM: dts: mmp2: devicetree updates
Date:   Wed, 28 Aug 2019 09:26:23 +0200
Message-Id: <20190828072629.285760-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Here's a couple of updates for the MMP2 SoC devicetree files.
I'm wondering if they could be applied to the armsoc tree?

Compared to previous submission, the only change is the addition of
Acks from Pavel.

Lubo


