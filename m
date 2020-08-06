Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F1B123DBAB
	for <lists+devicetree@lfdr.de>; Thu,  6 Aug 2020 18:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728044AbgHFQ3J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Aug 2020 12:29:09 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:52518 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726577AbgHFQSo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Aug 2020 12:18:44 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 076FCr1E111118;
        Thu, 6 Aug 2020 10:12:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1596726773;
        bh=clr1VV5fPhd6AHkch16xD7rviP96hWisxiD/e/1uR3I=;
        h=To:CC:From:Subject:Date;
        b=H/LXcHAbdCuFU8t9rrNFf1lbDN0jDofl7KV460VgutudTGmclKw2O/+Fi6CChq6Xz
         R70EdAi+CWvRbSwm2sTogdRiWVorO+CWI/+jHffJGI+p5Fp2loBnzid9sKDGXFYUzq
         BOZ4u2anwRvP9jXUzhN5CGjOGt8DhMrYtEOP5eVQ=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 076FCroR047443;
        Thu, 6 Aug 2020 10:12:53 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 6 Aug
 2020 10:12:52 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 6 Aug 2020 10:12:52 -0500
Received: from [10.250.38.37] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 076FCqGN065312;
        Thu, 6 Aug 2020 10:12:52 -0500
To:     Rob Herring <robh@kernel.org>
CC:     "Rivera-Matos, Ricardo" <r-rivera-matos@ti.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From:   Dan Murphy <dmurphy@ti.com>
Subject: [RFC] Writing a yaml to support multiple devices
Message-ID: <d8963f7a-c675-0e83-7ad9-cb79455cce58@ti.com>
Date:   Thu, 6 Aug 2020 10:12:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

<<< No Message Collected >>>
