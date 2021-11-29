Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F244460F33
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 08:12:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237430AbhK2HPx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 02:15:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232402AbhK2HNw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 02:13:52 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 551DBC06175A
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 23:10:35 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id p13so8221402pfw.2
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 23:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dTA5ud3pcmUbZ1xE5uOmnFByKDozJrEPV4w4Qk6rIvw=;
        b=c1szrkhypZONQzYZOGrUNlRloRrcF2L0VerJ4UPxjPi2TuZhUKU0jgr/gTlUbZLM6c
         jj1gAFppSlboqFQ6+mIaTw1C9376FU/VOqDtPJ50/9EWgqNnAXsp0eDXry4yKsXcH1TZ
         9KJQ6GKQt+yHZofLWWLw6uVdaUO8Qv26YIaFMmW6GQBEEOrkbW0DukC+6YdjFsxHARuN
         RyfVn5RgaAkFf4SgpGj6zpvBVq/oSvNKP7To1F+ATRbrlPnqqrubhSN9F5wuOg2qqTFw
         PxwaOf9jYFmE3jJqq+b9jm8fo1ZPo/PeHVKX0yb5fNZ6ZdHtWp6rxnMdA6KYON8KQxxZ
         NZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dTA5ud3pcmUbZ1xE5uOmnFByKDozJrEPV4w4Qk6rIvw=;
        b=4WBX8w3zcZDLkvJZl5Gt8HOHXP5K5HzbUFnLm7yDMVRyePL4pR+78tTHkF9tkNXiho
         Lr4rDnBv8qShDe+cd36+q5B7cNvuLrqY94cbrf2xr6uOH3cNCMxIUCePtV8/nlXkk3AS
         wE8NqQ1dOGd6IM8G6Q71aZS2Ihiguiiu2wl0/MCHnTLYHGF/2v9/SmR2rB9Wx/YFn4ft
         kPgVp3kRrRvmWZaeRvbOdQsJiNnriCyJLyBpn7UYxezWN2/dPw8lLz+nkB/JGpULjdj/
         rXZUT8oOsx7ZM0DwClMpnM681fkVrsNfeAnksmWhxE3c9+PtDO0bQ1T/TCQTBduTub8E
         jMVw==
X-Gm-Message-State: AOAM532BbRz0/MDO2depWOhiqoTtRVRdB4jO6q1zfLW5XoPV8kjg1inJ
        ZeycxpQ5QLo6ZSsPM/nrv6HN7A==
X-Google-Smtp-Source: ABdhPJxDS9wOvoMttiFLB+55g1aIXEZkM+ZkIlmj4P2bMLUD9Qy8/ZRtRHZfFtAfS5ZDY4pH6Ds84w==
X-Received: by 2002:a63:448:: with SMTP id 69mr9522548pge.141.1638169834496;
        Sun, 28 Nov 2021 23:10:34 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:3807:fdf3:5573:47d6])
        by smtp.gmail.com with ESMTPSA id ip5sm7216948pjb.5.2021.11.28.23.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 23:10:34 -0800 (PST)
Date:   Mon, 29 Nov 2021 15:10:29 +0800
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
Subject: Re: [PATCH v7 1/3] dt-bindings: mediatek: add adsp-mbox document
Message-ID: <YaR85TUlOBcMuG2a@google.com>
References: <20211129063954.1616-1-allen-kh.cheng@mediatek.com>
 <20211129063954.1616-2-allen-kh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211129063954.1616-2-allen-kh.cheng@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 02:39:52PM +0800, allen-kh.cheng wrote:
> From: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>
> 
> This patch adds document for mediatek adsp mbox
> 
> Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
> Reviewed-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>
> Signed-off-by: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>

Neither AngeloGioacchino Del Regno nor myself provided the R-b tags for the patch.  Please remove them.
