Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D26BF481010
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 06:36:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238779AbhL2FgD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 00:36:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234267AbhL2FgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 00:36:03 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72543C061574
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 21:36:03 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id b1-20020a17090a990100b001b14bd47532so19006439pjp.0
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 21:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LCWTLU499vgUIibOB7RC/Lf29OvyjLAfzziGpa9pprc=;
        b=UHG2Wr/bUh9+RG3z6/wLDKvolZg27kHxzETT+w1PyYUO0M/sEDfnfDaXFK1/Fe+EgQ
         EPmePdb9FtgIXRoeOSmBlqYRDCHjdVhn5U3zfC73wvgE9tX1KbrJH1jfp4d9PlDGU/XQ
         WN/0TGLd8cDAoQlePh8eUjttGzfucKl1hZPjfzGSC0zx4iosSx7jERUbeqLcHxD1Cxfo
         lcoILVOjDWFPER13QQjV2dxLhxvnSaNP2wnyqahYu84szMUf1fvfvQZr6YYtlaI5wHbk
         RCareXx3mv9jLuqA1CDDe+stKGjbppVraM/vQFxLpzLq2BY9y8oEUIp+Z/T5s5sQNUgp
         GWXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LCWTLU499vgUIibOB7RC/Lf29OvyjLAfzziGpa9pprc=;
        b=ulDW2LFjwsqFazkmw4OikNEVp4M1nkroTdJkVGYhG0PRgu1U040c0Fx4csFCdDOghh
         tKf63S0Ddt/UX5MKnpxw8Oa+9RoACEF41gF/pe0gnHpowJAKkiHcS19sKjQdZT4Mvlnq
         WBCxSxMCWBrSMw8ehkFV2tgRpJJFirzQKD/ujRNWNReoCAjOzBOG2rpmj/pOkpt1TrTc
         JrVcLOM6wsubK9UnncM7MgO8cHGo4ySV+Zf9+V0zsYCd6uLzDQe5NzJ/7vvsJwKU33QC
         t9UqyUUq6UlXZSvXpSK9nVefs7qa/YnhA3K51KC6lbrCn8wtjNyZqH2Bn/UIlp7gVKta
         PbyA==
X-Gm-Message-State: AOAM531a61WFWg3bXnKLkbZ9QVW/qjJfwEo7Ecqf3hUvrqgsXsKLa593
        FPdf23PplQpQXlFXgzYOMstOzA==
X-Google-Smtp-Source: ABdhPJwI3ybkjKJD6RZt2826LHFESA/M3BbWEhFyh7OncX6wgaoW14cNyMMqRzWh+NFFFl1UtWzOSA==
X-Received: by 2002:a17:902:6b02:b0:149:7c20:c15b with SMTP id o2-20020a1709026b0200b001497c20c15bmr13898631plk.173.1640756162651;
        Tue, 28 Dec 2021 21:36:02 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:4dea:2b20:ea89:724b])
        by smtp.gmail.com with ESMTPSA id w7sm23509460pfu.180.2021.12.28.21.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 21:36:02 -0800 (PST)
Date:   Wed, 29 Dec 2021 13:35:57 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     Yunfei Dong <yunfei.dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Irui Wang <irui.wang@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, srv_heupstream@mediatek.com,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v2, 01/12] media: mtk-vcodec: Add vdec enable/disable
 hardware helpers
Message-ID: <YcvzvXQ2Yov3OSvZ@google.com>
References: <20211228094146.20505-1-yunfei.dong@mediatek.com>
 <20211228094146.20505-2-yunfei.dong@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211228094146.20505-2-yunfei.dong@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 28, 2021 at 05:41:35PM +0800, Yunfei Dong wrote:
> From: Yunfei Dong <yunfei.dong@mediatek.corp-partner.google.com>
> 
> Lock, power and clock are highly coupled operations. Adds vdec
> enable/disable hardware helpers and uses them.
> 
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>

Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
