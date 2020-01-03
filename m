Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A010C12FEEF
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2020 23:44:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728866AbgACWor (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jan 2020 17:44:47 -0500
Received: from mail-il1-f193.google.com ([209.85.166.193]:41443 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728861AbgACWor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jan 2020 17:44:47 -0500
Received: by mail-il1-f193.google.com with SMTP id f10so37860533ils.8
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2020 14:44:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1X+uA4KwbOlDW43uh4WTk3rfWonQFJL9jlxrD4of9Dk=;
        b=jJ/iCPiVUxJtR8MAeB4dIHYDttVidShUSMYPMuO0hI+bHeNYuuaWQ7nW93vLnusT3q
         nXSzLT9e7jzM3dt5NvWFZYOLKZzojmR/SxcY/p8ZUGLhqw5kKv/k0SUB8XZkpftOHVrY
         B+nltYvMj50lXLyvATLzLORPX/pQbj0TIZjs0/qMvAZc6jjWDbH8ASgoYMTGBc93kaiI
         Kqt1Z+pkofA+nB5DvEv2q3vMkxOhQ9aVDAs7iTrG60gqWloKZdyE0MiydLS3g+iFCpYq
         roRmw2cEc10Euc8FOjCaXZmq1EQeFIibgBdVMPH/wtpoRf3WByz6te8U3SzBXqIGHkin
         Vb6w==
X-Gm-Message-State: APjAAAUouKiz8E0Gh4QRggmCWTXmT3Ov+1yTRaE/gZI1jMl1ubBixP3P
        psqcfqicH50l9rIFSSmkAUCtWxE=
X-Google-Smtp-Source: APXvYqxjEOASWxUkvlJVPYr8fAWZ10kUnqfcwSIlhUoyKNnBwhyRO5ij73QRvIxox/DNObMQFTzjPw==
X-Received: by 2002:a92:459b:: with SMTP id z27mr74100153ilj.104.1578091486518;
        Fri, 03 Jan 2020 14:44:46 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id t25sm14985304ios.78.2020.01.03.14.44.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2020 14:44:45 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219a5
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Fri, 03 Jan 2020 15:44:43 -0700
Date:   Fri, 3 Jan 2020 15:44:43 -0700
From:   Rob Herring <robh@kernel.org>
To:     Saravanan Sekar <sravanhome@gmail.com>
Cc:     sravanhome@gmail.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com, mripard@kernel.org,
        shawnguo@kernel.org, heiko@sntech.de, sam@ravnborg.org,
        icenowy@aosc.io, laurent.pinchart@ideasonboard.com,
        gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
        davem@davemloft.net, mchehab+samsung@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: Add an entry for Monolithic Power
 System, MPS
Message-ID: <20200103224443.GA25756@bogus>
References: <20191226222930.8882-1-sravanhome@gmail.com>
 <20191226222930.8882-2-sravanhome@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191226222930.8882-2-sravanhome@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 Dec 2019 23:29:27 +0100, Saravanan Sekar wrote:
> Add an entry for Monolithic Power System, MPS
> 
> Signed-off-by: Saravanan Sekar <sravanhome@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
