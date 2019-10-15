Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DBEA6D8407
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 00:48:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390072AbfJOWsg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 18:48:36 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:46144 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725991AbfJOWsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 18:48:35 -0400
Received: by mail-ot1-f67.google.com with SMTP id 89so18423435oth.13
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 15:48:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VXXXgfaRs0fRYb5MfNDLzUAfZ9uiwu8dv9B5jD48jZE=;
        b=aocGzxEFcnr08fh7UzdFaix6iH4O2rwoi1+2iEEa1fikXZHAGK7vLtxC+LxSWSzFXO
         41nYngG4ZPsyUJ9aVwSB9tyL106csBajE1E5WPqos32rAfrm9oNUBAFgiUb1wyIFXlKP
         9wIkF8NV0tgrsdbV052AIZekK/UJgVQ+kUHfrERLW/JKGQ5HYucZvh42zhpU+MqWvvML
         ptaEslr1RqRzJ96FTV9a9p2EMygCtFHN4R/ESSYo0kmtbh/J1GcbuxgfTiMuoWMrXmzb
         xxtxXvmkEreml21FkVT9UK+hGurvp2UnO8LjSUU7qfG64mz1qiTNyBViiopWbJV7QMb7
         0cZQ==
X-Gm-Message-State: APjAAAWKzpCEngliyX8BsWilOQZ1MbV0grSMl7AIeF99rZ47dlrOD8rF
        Y+uWnv5oyE90+geKKAojgg==
X-Google-Smtp-Source: APXvYqxgUj5HD8FnhJ04YByPQz/f5VlgGXVtmKJG3CQumR9dS3mjjn5FauT/umy7rGiEV7kXQ6hMcQ==
X-Received: by 2002:a9d:5f93:: with SMTP id g19mr2089596oti.260.1571179715119;
        Tue, 15 Oct 2019 15:48:35 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y18sm6788795oto.2.2019.10.15.15.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 15:48:34 -0700 (PDT)
Date:   Tue, 15 Oct 2019 17:48:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Markus Niebel <Markus.Niebel@tq-group.com>,
        kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: arm: fsl: Add TQ TQMa6{S,Q,QP} on MBa6x
Message-ID: <20191015224833.GA15598@bogus>
References: <20191011143651.6424-1-p.zabel@pengutronix.de>
 <20191011143651.6424-3-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011143651.6424-3-p.zabel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Oct 2019 16:36:51 +0200, Philipp Zabel wrote:
> Add binding documentation for the TQ MBa6x mainboard with TQMa6S,
> TQMa6Q, or TQMa6QP SoM.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
