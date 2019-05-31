Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C8DF930F6C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 15:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726589AbfEaN7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 09:59:05 -0400
Received: from mailout2.w1.samsung.com ([210.118.77.12]:37482 "EHLO
        mailout2.w1.samsung.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726386AbfEaN7F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 09:59:05 -0400
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
        by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20190531135903euoutp025569df4b484d9684504c9893622ec3e9~jyTkxGh8g1248712487euoutp02h
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 13:59:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20190531135903euoutp025569df4b484d9684504c9893622ec3e9~jyTkxGh8g1248712487euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1559311143;
        bh=JS6URQoijRo1UAIgaBda5hR8uXLuh/laBLVUAx4Z8fQ=;
        h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
        b=QoH+zszmRdy2AzlVHrZXph/QVZCtJ89G/u7il6zyYD/RxVeP/ZFQddhiCx7TdxP2w
         Fem0ZM3Yb3IqDyxETO3VWz7UfCCTnfv1amXM3/wTYrJ5CFnccDFjNeEI26UnjQpLti
         8xO1eeGRxSNa///m1dVE4JL5KcsC4ViZiKvAu0IE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
        eucas1p1.samsung.com (KnoxPortal) with ESMTP id
        20190531135902eucas1p139dac526976986fbb302ee46bb09dd45~jyTkFgmpm2731527315eucas1p1K;
        Fri, 31 May 2019 13:59:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
        eusmges3new.samsung.com (EUCPMTA) with SMTP id 1B.6B.04325.62331FC5; Fri, 31
        May 2019 14:59:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
        eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
        20190531135901eucas1p15b2684dbfbdf04ebf5c077388e0c67cb~jyTjSuG9I3203332033eucas1p1Q;
        Fri, 31 May 2019 13:59:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
        eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20190531135901eusmtrp10bdd96c09c6727809d52e91667e6028b~jyTjR_43W2415824158eusmtrp1M;
        Fri, 31 May 2019 13:59:01 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-f0-5cf133260820
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
        eusmgms2.samsung.com (EUCPMTA) with SMTP id 34.19.04140.52331FC5; Fri, 31
        May 2019 14:59:01 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
        eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
        20190531135901eusmtip15413005f9fbc5cf4822cece349c5bd20~jyTin_-hp1881718817eusmtip1V;
        Fri, 31 May 2019 13:59:01 +0000 (GMT)
Subject: Re: [PATCH v8 0/6] drm/bridge: sii902x: HDMI-audio support and some
 fixes
To:     Jyri Sarha <jsarha@ti.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     laurent.pinchart@ideasonboard.com, tomi.valkeinen@ti.com,
        peter.ujfalusi@ti.com, robh@kernel.org
From:   Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <0d627548-0b53-6da3-8468-9bfa2d66cca4@samsung.com>
Date:   Fri, 31 May 2019 15:59:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
        Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cover.1558964241.git.jsarha@ti.com>
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djPc7pqxh9jDE5Okra4cvEQk8X8I+dY
        La58fc9m0d3ZwWrROXEJu8Wsjz9YLf7v2cFusX7+LTYHDo8Nn5vYPGZ3zGT12LSqk83jfvdx
        Jo/jN7YzeXzeJBfAFsVlk5Kak1mWWqRvl8CV0dKqVHCTo6J5xTP2BsZ3bF2MnBwSAiYSU5vW
        ANlcHEICKxglFja2sUA4Xxgltj46xApSJSTwmVGi830NTMf6q21QHcsZJe5NPQ7lvGWU+Plr
        L1A7B4ewQIjEvo/aIA0iAlUSB1ruM4LYzAJpEqc6F4OtZhPQlPi7+SaYzStgJ/H73F52EJtF
        QFXi4+J/YHFRgQiJ+8c2sELUCEqcnPmEBcTmFDCUWLP4CzPETHmJ7W/nQNniEreezGcCuUdC
        YBe7xL0z51ggrnaR6LhxEOpnYYlXx7ewQ9gyEqcn90DV1EvcX9HCDNHcAfT+hp3MEAlricPH
        L7KCPMYMdPX6XfoQYUeJtZ+2MYGEJQT4JG68FYS4gU9i0rbpzBBhXomONiGIakWJ+2e3Qg0U
        l1h64SvbBEalWUg+m4Xkm1lIvpmFsHcBI8sqRvHU0uLc9NRi47zUcr3ixNzi0rx0veT83E2M
        wJR0+t/xrzsY9/1JOsQowMGoxMM7QehjjBBrYllxZe4hRgkOZiUR3r8vPsQI8aYkVlalFuXH
        F5XmpBYfYpTmYFES561meBAtJJCeWJKanZpakFoEk2Xi4JRqYOSeNds858tsn9sRdqks0zk3
        u9cevLXMt/PvIvu/enPMMqeoeM+w7OM9kLB5/XmBktWzFrJcXOIVsteO+X/I/FmWMaJtxRpz
        rz1Zodd27psSp+O6PXLrri92fGgVwhL1ia0h6Kpgh+riWMtQIe36rUV77IyNwpTWV+mrndJI
        OnO+REdd2bkyVImlOCPRUIu5qDgRACNGvyVFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsVy+t/xu7qqxh9jDPZNMLC4cvEQk8X8I+dY
        La58fc9m0d3ZwWrROXEJu8Wsjz9YLf7v2cFusX7+LTYHDo8Nn5vYPGZ3zGT12LSqk83jfvdx
        Jo/jN7YzeXzeJBfAFqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Ka
        k1mWWqRvl6CX0dKqVHCTo6J5xTP2BsZ3bF2MnBwSAiYS66+2AdlcHEICSxklpkzYwQKREJfY
        Pf8tM4QtLPHnWhdU0WtGiXlnb7N2MXJwCAuESOz7qA1SIyJQJbFywzZWEJtZIE1iwv/DzBD1
        LYwSr55dYQRJsAloSvzdfBNsM6+AncTvc3vZQWwWAVWJj4v/gcVFBSIkzrxfwQJRIyhxcuYT
        MJtTwFBizeIvzBAL1CX+zLsEZctLbH87B8oWl7j1ZD7TBEahWUjaZyFpmYWkZRaSlgWMLKsY
        RVJLi3PTc4uN9IoTc4tL89L1kvNzNzEC43DbsZ9bdjB2vQs+xCjAwajEwztB6GOMEGtiWXFl
        7iFGCQ5mJRHevy8+xAjxpiRWVqUW5ccXleakFh9iNAV6biKzlGhyPjBF5JXEG5oamltYGpob
        mxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYHRYvWIC96xJRt4X2fetsJtQu+KZ2tRZ
        +qnxm6KelJq6iH/IaVVJcrOYw9Ly54HLoTd/G3IlTkxfrLsz8aCoc9vOgldGs2aaCdx8rvKr
        0z7Cdu3DCu2XSrrV4qncWpLFrPm/c+I79rMqZgrNP5AjOUd4ovG1hErZ19oldWuLzjS3Kv1T
        3ZQ1T4mlOCPRUIu5qDgRAE3KyC/ZAgAA
X-CMS-MailID: 20190531135901eucas1p15b2684dbfbdf04ebf5c077388e0c67cb
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20190527134816epcas1p1498005cdec8554f27e15281095d4958d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190527134816epcas1p1498005cdec8554f27e15281095d4958d
References: <CGME20190527134816epcas1p1498005cdec8554f27e15281095d4958d@epcas1p1.samsung.com>
        <cover.1558964241.git.jsarha@ti.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27.05.2019 15:47, Jyri Sarha wrote:
> I think these should be ready for applying to drm-misc.
>
> Changes since v7:
>  - Debased on top of the lasts drm-misc-next and tested
>  - "dt-bindings: display: sii902x: Add HDMI audio bindings"
>    - Dropped off "or higher to avoid conflict with video ports"
>      and added "Reviewed-by: Rob Herring <robh@kernel.org>"
>
> Ther previous round:
> https://patchwork.kernel.org/cover/10919173/
>
> Jyri Sarha (5):
>   drm/bridge: sii902x: Set output mode to HDMI or DVI according to EDID
>   drm/bridge: sii902x: pixel clock unit is 10kHz instead of 1kHz
>   dt-bindings: display: sii902x: Remove trailing white space
>   dt-bindings: display: sii902x: Add HDMI audio bindings
>   drm/bridge: sii902x: Implement HDMI audio support
>
> Tomi Valkeinen (1):
>   drm/bridge: sii902x: add input_bus_flags
>
>  .../bindings/display/bridge/sii902x.txt       |  42 +-
>  drivers/gpu/drm/bridge/sii902x.c              | 488 +++++++++++++++++-
>  2 files changed, 522 insertions(+), 8 deletions(-)
>
Queued to drm-misc-next.

--
Regards
Andrzej

