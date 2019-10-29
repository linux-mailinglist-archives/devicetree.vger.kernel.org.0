Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 49CCBE8D58
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2019 17:57:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728686AbfJ2Q5q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Oct 2019 12:57:46 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:43729 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728672AbfJ2Q5q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Oct 2019 12:57:46 -0400
Received: by mail-ot1-f66.google.com with SMTP id b19so8022800otq.10
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2019 09:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AzR50uFmoDCtnAJJfiGxTvyuBUS+uKVO9Sccr9LgN3A=;
        b=tqGEoGLqOXNI/wQwgwHAIJIDgshNhRS6MtlOh5NyIt2jdl3CXoHdZ9qvHq7iBeRgbN
         DH9syBoxQNqk5nWAvNItPVqFyhmvg3vIrEzI530ss1ypM99leH8ozYkVkC4sjTM6Y/5v
         9YC8uYl45ukvUvOzmvMfci9fSFyZ5r4hdLfMpnbdkvdZJ0nJKGKd0/SRkRy9f9hgqInv
         BkfYUETZb9ZRXWw51kEmwfY/3OFBlR2alTIrCuYFb2BOIb7gv6F0Y6c/Lp6HA8v5qac9
         4rbxuhgUovQTWU15YZ45z/ZJO2CWBepN8FEdLK5ISEFm7RoM/U9qhhtwNRI0Uzm0ok5H
         4UQg==
X-Gm-Message-State: APjAAAVbkC5gb4E94suknWa0Uj7Rwr/cKnbJVvB/exweEVbMEKTBlT2f
        0lSjEahoiDPM+OkJQys/Sw==
X-Google-Smtp-Source: APXvYqyA4q27jgqbyYHzCXs5l/JuoLIkpIFSmc+fTrrf3tbcL04DsgIowaA8Q0ofDaNVgZxnpP/5Jg==
X-Received: by 2002:a05:6830:1256:: with SMTP id s22mr19536485otp.308.1572368265215;
        Tue, 29 Oct 2019 09:57:45 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u1sm2055522oie.37.2019.10.29.09.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 09:57:43 -0700 (PDT)
Date:   Tue, 29 Oct 2019 11:57:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, robh+dt@kernel.org, narmstrong@baylibre.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@siol.net,
        dri-devel@lists.freedesktop.org, allen.chen@ite.com.tw,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Subject: Re: [PATCH 3/6] ASoC: dt-bindings: mt8183: add a property
 "mediatek,hdmi-codec"
Message-ID: <20191029165743.GA11562@bogus>
References: <20191022114505.196852-1-tzungbi@google.com>
 <20191022193301.3.I37696eb1321a21846f9e5a9eb14dfac7dbe10663@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191022193301.3.I37696eb1321a21846f9e5a9eb14dfac7dbe10663@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 22 Oct 2019 19:45:02 +0800, Tzung-Bi Shih wrote:
> Add an optional property "mediatek,hdmi-codec".
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt           | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
