Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4A2049E03D
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 12:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239992AbiA0LIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 06:08:19 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:51300 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239985AbiA0LIS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 06:08:18 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: kholk11)
        with ESMTPSA id B3DAE1F4508E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1643281697;
        bh=pD9noCDXkcqAB6AAEiwPfDWrkWdMpDGOBwLRXgaqv88=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=nnr3GMbFnt1x0OVs6l9kutbE+Fhxml6aliTz565q+5SVqy4sw+hWTa4e4tIJ7s8KK
         7OZQktfsBd+vF8FQWQ387uWoUXxBhkhIU7Xgvp4cd0OR/GNnhR/+Mt77PYInVxSos5
         u8ADJBg9wKFE2heP+yjGZnaaanYyDUvVVHwvkEZvyShsYdGMru/z2Mgavi26kH+2Vv
         O5LAfbiimj56jRKhqv7szsvodmnHcIBpvCrt2A7F6PSbJzKkOvcaLWWnjiRahNbVft
         QJ+mZ0S4t6tlmmF12a4tRo5mZMbG9w3uHFbJNN5VReFFx/V0ty2femMGdtr+6z++kI
         FSUugopXN6eeQ==
Subject: Re: [PATCH v4 08/35] iommu/mediatek: Use kmalloc for protect buffer
To:     Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Will Deacon <will@kernel.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Tomasz Figa <tfiga@chromium.org>,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org,
        Hsin-Yi Wang <hsinyi@chromium.org>, youlin.pei@mediatek.com,
        anan.sun@mediatek.com, xueqi.zhang@mediatek.com,
        yen-chang.chen@mediatek.com, mingyuan.ma@mediatek.com,
        yf.wang@mediatek.com, libo.kang@mediatek.com,
        chengci.xu@mediatek.com
References: <20220125085634.17972-1-yong.wu@mediatek.com>
 <20220125085634.17972-9-yong.wu@mediatek.com>
From:   AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Message-ID: <ca47becf-adc9-f11e-5e59-03f203920344@collabora.com>
Date:   Thu, 27 Jan 2022 12:08:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20220125085634.17972-9-yong.wu@mediatek.com>
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Il 25/01/22 09:56, Yong Wu ha scritto:
> No need zero for the protect buffer that is only accessed by the IOMMU HW
> translation fault happened.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>

I would rather keep this a devm_kzalloc instead... the cost is very minimal and
this will be handy when new hardware will be introduced, as it may require a bigger
buffer: in that case, "older" platforms will use only part of it and we may get
garbage data at the end.

Regards,
Angelo
