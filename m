Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5717465D7C
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 05:42:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355548AbhLBEqC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 23:46:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238988AbhLBEqB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 23:46:01 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD38C061574
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 20:42:39 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id gx15-20020a17090b124f00b001a695f3734aso3634444pjb.0
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 20:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Q/XmdYzmWlBC/voF+84Cd3udQjdonRFCNCIqCUmDhDk=;
        b=NNI4lbBLOzUh6enNA2zXDD6i/1bbGmC+FP6nollo+ZHi511xLiHCuXuklfoEatdbSW
         c/K2UDB3imN6OpU5wZVX9y/cgHytjg748J8xZWdpWc5c2s/mjPDhWwgVMqKKaZGX/KR8
         N5KEWOuSX6ObkcWzGMI0QUSJfrREjzwt0FlH38L7xhCnOUlCDKqwF76FdcUJMuPKFyyf
         NcPOfpJLQ3fdoJX6usozrWel3ddfQu+4oIgNFru6sBQG3JAIVq+ToAIk0jcJUNombClm
         98B1D6VwKpA9QpeCwgFuO6oyX8A9MSk+vYb9i38GLAnPQQTpxaDTVACDW5OSlJ7IfZLR
         NVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q/XmdYzmWlBC/voF+84Cd3udQjdonRFCNCIqCUmDhDk=;
        b=dSLbCeXEvqmBdCW6wEdl58iByX7efjcBz7UuuY9mlcA8LIpr5uEGbDyyjsTDS9/S2b
         BpQktvvB8GhzUkJdPV5gmxDvUUtov42RnH74hlcJnRWQK1uufntrZiqoh6do+HuR2Gws
         4MjlWdwLsjN/xKG+cfVUmTFUyIfSninEHpmnDjA7tmyIxxNjar9RAUNyqSt40qaDfy1p
         +jLt2ZEpel/lEcETdXINIQHgPunEiSbQQnFsHTtyXVqj8nd7gPHsblHtgu8SDyDN9Gc+
         Pl45EWRGUBHinTPZqlUO7Da1OIDgpFTJl9nMDV9SH2l00RuezpL5gBYEgadZPv2zwsjb
         kKkQ==
X-Gm-Message-State: AOAM531E0047AEB1BZmtlzfYsdUaWxecD7IF+F4rxZT5fAtvRd7jF5v5
        3CkPtXEcAnsCudMN8iXDkLC3dQ==
X-Google-Smtp-Source: ABdhPJwd7LFTasLsCKCBBJSOBzXW1hcUhBvCVvh8QO8kQ/q9LWJdPJFWFfi3xByxw9fLIekXcskJdw==
X-Received: by 2002:a17:903:1208:b0:143:e4e9:4ce3 with SMTP id l8-20020a170903120800b00143e4e94ce3mr12739440plh.21.1638420159291;
        Wed, 01 Dec 2021 20:42:39 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:ce4d:ddd8:41f4:d987])
        by smtp.gmail.com with ESMTPSA id p19sm1545646pfo.92.2021.12.01.20.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 20:42:39 -0800 (PST)
Date:   Thu, 2 Dec 2021 12:42:34 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        cujomalainey@google.com,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        sound-open-firmware@alsa-project.org
Subject: Re: [PATCH v9 2/3] firmware: mediatek: add adsp ipc protocol
 interface
Message-ID: <YahOuiIZ/wGR/TpD@google.com>
References: <20211201075604.27864-1-allen-kh.cheng@mediatek.com>
 <20211201075604.27864-3-allen-kh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211201075604.27864-3-allen-kh.cheng@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 01, 2021 at 03:56:03PM +0800, allen-kh.cheng wrote:
> Signed-off-by: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>

Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
