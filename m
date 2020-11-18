Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 584472B760A
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 06:52:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726287AbgKRFqj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 00:46:39 -0500
Received: from hqnvemgate24.nvidia.com ([216.228.121.143]:10845 "EHLO
        hqnvemgate24.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725800AbgKRFqj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 00:46:39 -0500
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5fb4b5490000>; Tue, 17 Nov 2020 21:46:49 -0800
Received: from [10.25.102.221] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 18 Nov
 2020 05:46:36 +0000
Subject: Re: [PATCH 4/4] ASoC: dt-bindings: Refine 'frame-master' and
 'bitclock-master' type
To:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
CC:     <devicetree@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>
References: <20201117013349.2458416-1-robh@kernel.org>
 <20201117013349.2458416-5-robh@kernel.org>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <569d30e4-48ba-51b1-39f3-0edba303873b@nvidia.com>
Date:   Wed, 18 Nov 2020 11:16:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117013349.2458416-5-robh@kernel.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1605678409; bh=mKzhZMKh4pc2zrzu7v+eVTID84+eLb68P87ZBywkT5c=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=Vz3RHLxBAQtnNScnPW/4o3vVH1QeYbRV0vuOfS/s9vHRIhgvKdhqIhdXGKyaFg+3J
         k5vBd8wYRHyfesCtedTW1L3jYXuCY3ZGwT66vZW2cmiozrNc5gGrWMp1c6VE7N4LFi
         8enlacCNFfXxOUBDBuTRm072APmkaCtayBDmv4sHBSXnaRl/8qWa/IipfTrYyM8wFV
         zvn1rQW/LkOFXTKHS0GLVeUXspksfJYBkLDFq6zyzWO+7+7jqzUvHguxTnEa4yEuyG
         JWSECBvgq+jmGFNQyD7+QJoEQqjhrlWdOUJfrW7ZAgaPVLdtfJCvYyyEaQwWz5nN0/
         3h/DDMn1z2zOQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> 'frame-master' and 'bitclock-master' are only a single phandle, so use
> the more specific 'phandle' type definition instead.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>   .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++----
>   Documentation/devicetree/bindings/sound/simple-card.yaml    | 6 ++----
>   2 files changed, 4 insertions(+), 8 deletions(-)
>

Acked-by: Sameer Pujar <spujar@nvidia.com>
