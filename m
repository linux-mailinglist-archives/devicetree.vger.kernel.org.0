Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7C2C95F23
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:49:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729351AbfHTMtN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:49:13 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:43074 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727006AbfHTMtN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:49:13 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7KCnA1A090372;
        Tue, 20 Aug 2019 07:49:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1566305350;
        bh=3fUnEN0H3s51amtQv3+SO1Lvv3iqz4+LFptcuvwFBs8=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=GVwR5w0fj3pbBxeVgCVxYPjvBmLi18PfkHGprk+iUj90S6cVJXeDtb/BKAlYFsRnU
         VIjFcgs9sVGYIONTtH123coJuGulfux2wNFjdEwB14KdaHYPs/fgN2cqPAoLb1oLG/
         6x+qdcgnw3h1J2yqg+gdHHyzwjJFyPF4ur/6O09E=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7KCnASY100487
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 20 Aug 2019 07:49:10 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 07:49:09 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 07:49:09 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7KCn7RX110334;
        Tue, 20 Aug 2019 07:49:07 -0500
Subject: Re: [PATCH v5 0/2] arm64: dts: ti: k3: Update the power-domain cells
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190729123023.32702-1-lokeshvutla@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <9aa7eeaf-36ee-3d5f-9654-d8fa37577877@ti.com>
Date:   Tue, 20 Aug 2019 18:18:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190729123023.32702-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/07/19 6:00 PM, Lokesh Vutla wrote:
> Update the power-domains cells on all K3 based devices to reflect
> exclusive and shared permissions in each device.

Gentle Ping on this series.

Thanks and regards,
Lokesh

