Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E1D8951B6E
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 21:31:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730246AbfFXTbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 15:31:08 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:37138 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727947AbfFXTbI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 15:31:08 -0400
Received: by mail-io1-f65.google.com with SMTP id e5so3457953iok.4
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 12:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=46YubdxCxrFPh8KrDchM0Ty2p47WTPPMVanoBQz+N5I=;
        b=WapHHi8N2f4HLGXe8Azqgnk2rXsYnSSwWeXoyTGoqptEniMQ7RI34LHdkfRxx+PTYJ
         6q8PlKhv4L+QPsNZCCEMml8wD0fIpbl5OiXhrEU0oePfqE5PupxtN+Plt9pm45DyQEdT
         xLv0d4d/GDSlQZxVi/VWkz/v0k08TuKOrnfCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=46YubdxCxrFPh8KrDchM0Ty2p47WTPPMVanoBQz+N5I=;
        b=X5sLDSYRD1EHuJzb0unB9mwo1E45FJgC2sp7ZV60b4NBke/8MNJhHFCeZx5/KplKPr
         qLcMO7zlKUEuZXdfNNNqUWQDG/98wdP1werERbVX4q9Z64AiR0WTSEr3e4yKeB7NBod+
         DN/pSij95tZi0zCHqAdIpinnslRQgEmxhpRDpxxMx+AtoPbpp0VNgyfMrcyB9SmjdTW1
         hkUT67CJq6DH6iCEZpT7nMGoaQ5fPGNkBU8cUVp5O00rBatU/twWAj1rjFYFQL5rHsBt
         onHslH2goKb4bQBmoLhv88OvME6QkvtvhFJbrWGGs8syPJnwgUTjN5TPh8Z+xSYVSnKV
         jY6w==
X-Gm-Message-State: APjAAAV4+vkF0mPg1bE/xkCIUUZ6lhZ3m3ZvUFfYQp4RdufldVoVexKE
        fkz5kaH1Mxkxh/vcC6yobtcdzXVNizo=
X-Google-Smtp-Source: APXvYqwN6HS/jGeb1oppfnSEkTSv28AYkb5E1oCs4vZjthdIq9WyeSSPbCvsUreAXB8ZlSeTRJ6uqQ==
X-Received: by 2002:a5e:c705:: with SMTP id f5mr15043558iop.113.1561404667408;
        Mon, 24 Jun 2019 12:31:07 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id e84sm23021389iof.39.2019.06.24.12.31.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Jun 2019 12:31:07 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id i10so67893iol.13
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 12:31:07 -0700 (PDT)
X-Received: by 2002:a02:aa1d:: with SMTP id r29mr14713662jam.127.1561404342590;
 Mon, 24 Jun 2019 12:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190621211346.1324-1-ezequiel@collabora.com> <20190621211346.1324-2-ezequiel@collabora.com>
In-Reply-To: <20190621211346.1324-2-ezequiel@collabora.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 24 Jun 2019 12:25:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UO8S_MHPKvpu-Uc1pTAv2NN_hf+U6_HCntRU0hzGQtWw@mail.gmail.com>
Message-ID: <CAD=FV=UO8S_MHPKvpu-Uc1pTAv2NN_hf+U6_HCntRU0hzGQtWw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: document VOP gamma
 LUT address
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>, kernel@collabora.com,
        Sean Paul <seanpaul@chromium.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Ilia Mirkin <imirkin@alum.mit.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jun 21, 2019 at 2:14 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add the register specifier description for an
> optional gamma LUT address.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes from v1:
> * Drop reg-names, suggested by Doug.
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-vop.txt   | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
