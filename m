Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 98BACD6863
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 19:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388277AbfJNRXj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 13:23:39 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:42372 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726637AbfJNRXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 13:23:38 -0400
Received: by mail-ot1-f67.google.com with SMTP id c10so14460301otd.9
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 10:23:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JD69k1IYmv5zIeXa6Z5TEDaM3nDtNwvQeDBrSGHbMgQ=;
        b=sEA7RcGeF0csFBY0G3Y0+U+H1oWM6O15MOsbF6BMZsc9H1ZDj+gx/xpjwLJwHZ45zk
         OhVkIfoGo1Intni3+Ec+/pKFXEEFt7BdwPzIMIemdu0ssPS2Dv2+zXN5ocRGIuyxKfDZ
         hP1523p77qWgU7FHOSStBlNoLSrg64xDh7qKHHTpOX352DSXEdM7U8AO0xpKsy1ZJV0M
         OpySfVEvQkPR6LVhg4N/PZiJ/RivSqDnH4BqbXOlw2vHEosORjaWmoK9CZoYhg3A2ze2
         JJ5jQFucd/UPTfp9GQn1gzlskCgTZvedBtd8QcL1ZB7I+DkKLLh0Shz0BzgRyMq+FbRz
         J9WQ==
X-Gm-Message-State: APjAAAX3g3C9Sd9xXxWinLVoGhIFi/7mHuidKYuWA0uHKaOrRWzV3TpZ
        mW7O62nSfqQ8Kale1dYwMg==
X-Google-Smtp-Source: APXvYqxHRdJmQOPrisxteYs0+w/NF0pxpsJM37YdctdK9XWzKLaQy61q28m3ATRWNm92Z8t2U3b56w==
X-Received: by 2002:a9d:7dd6:: with SMTP id k22mr1957125otn.256.1571073817986;
        Mon, 14 Oct 2019 10:23:37 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x80sm5679259oia.37.2019.10.14.10.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 10:23:37 -0700 (PDT)
Date:   Mon, 14 Oct 2019 12:23:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        enric.balletbo@collabora.com, bleung@google.com,
        gwendal@google.com, drinkcat@google.com, cychiang@google.com,
        dgreid@google.com, tzungbi@google.com
Subject: Re: [PATCH v3 09/10] ASoC: dt-bindings: mt8183: add ec-codec
Message-ID: <20191014172336.GA16992@bogus>
References: <20191014102022.236013-1-tzungbi@google.com>
 <20191014180059.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191014180059.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Oct 2019 18:20:21 +0800, Tzung-Bi Shih wrote:
> Add an optional property "ec-codec".  If specified, mt8183 could use the
> "wake on voice" feature offered by EC codec.
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt          | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
