Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B78A2B75FF
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 06:44:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726085AbgKRFoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 00:44:30 -0500
Received: from hqnvemgate26.nvidia.com ([216.228.121.65]:14152 "EHLO
        hqnvemgate26.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725794AbgKRFoa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 00:44:30 -0500
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5fb4b4c20000>; Tue, 17 Nov 2020 21:44:34 -0800
Received: from [10.25.102.221] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 18 Nov
 2020 05:44:27 +0000
Subject: Re: [PATCH 1/4] ASoC: audio-graph-card: Refactor schema
To:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
CC:     <devicetree@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>
References: <20201117013349.2458416-1-robh@kernel.org>
 <20201117013349.2458416-2-robh@kernel.org>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <f56ff2bf-df85-dbf9-23ce-62d2682bef99@nvidia.com>
Date:   Wed, 18 Nov 2020 11:14:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117013349.2458416-2-robh@kernel.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1605678274; bh=ASlF1JPd3ZLrsdCntZ++jHI66rp+SI2UXQnZFIYwjao=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=gJxg4XPilhU+olJ8aW0aJcN7PhULezLQmntRrmPV/XvJIuARN/DQJRAqdgWsbLVtr
         CbzvkA/QwG71RcE45bpDhPgpS26VwAKlbGyGPtMHo8GmvPQabBOAmoHeSjxKgPvPXL
         GibdfFCrhjg8mlGWg1sVBOU6/p9Knh72yAngk2KewvAc6rsGdw0hFiVqy4GJc3LUNr
         NJW/mwminiLzcXEyC6HSCv1p4bbDHOiVWa0bpwNIP6GQkeRz/zsbarsm5vek21+mF8
         kE/Io3hDvCm4WZQCjpooVrS3u9NCK5orayCXGzUpIxhSn8XjtufdNpJXqEeI13nMR9
         BelRzSGih1Elw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> From: Sameer Pujar <spujar@nvidia.com>
>
> There can be customized sound cards which are based on generic audio
> graph. In such cases most of the stuff is reused from generic audio
> graph. To facilitate this, refactor audio graph schema into multiple
> files and the base schema can be reused for specific sound cards.
>
> The graph card nodes and port nodes are separate entities, so they
> should be separate schemas.
>
> Signed-off-by: Sameer Pujar <spujar@nvidia.com>
> Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> [robh: Split out port schema. Add graph.yaml in subsequent commit]
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>   .../bindings/sound/audio-graph-card.yaml      | 106 +-----------------
>   .../bindings/sound/audio-graph-port.yaml      |  86 ++++++++++++++
>   .../bindings/sound/audio-graph.yaml           |  45 ++++++++
>   .../bindings/sound/renesas,rsnd.yaml          |  12 +-
>   4 files changed, 141 insertions(+), 108 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-port.yaml
>   create mode 100644 Documentation/devicetree/bindings/sound/audio-graph.yaml

Thanks for the update.

Acked-by: Sameer Pujar <spujar@nvidia.com>
