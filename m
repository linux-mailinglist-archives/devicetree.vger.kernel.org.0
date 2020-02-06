Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7CF49154E6A
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2020 22:55:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727499AbgBFVz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Feb 2020 16:55:58 -0500
Received: from mail-pf1-f194.google.com ([209.85.210.194]:37812 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726765AbgBFVz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Feb 2020 16:55:57 -0500
Received: by mail-pf1-f194.google.com with SMTP id p14so148858pfn.4
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2020 13:55:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/tW7vUQQFgdGDf5pE2yiD2il6GAEqqf3ycBEzqGfn5E=;
        b=Kt8JXo4vaUxranNgD05GOyjwQJKkRzGmngkUq80l3C/gbyvD5ZCdglf2L/TE9pv+WW
         EAEydjL2BzMWCkK2jQjER/wIWqI9rgrg93Ae65W7yu0Wpy9PY7FRCwJlqlP6+GLodsGT
         I3S/kXgW3yfvmbWNeTqaUPynH+b6d6Q/ufxRg5VHhHWbV8LdBPtbbGrkZk3vWdnDCpOr
         gMM6lQk9CHcda6T/CKK8Zkf9lm1b25v1dqo6l5rsZzs/o8QFgFABlLx8vjvQU6YQ0WRV
         Fz3oqFQkmPpFmTgf9L7Kq9LEEPHiBGw2D8UTSj3o13Ld4WSZ32E3nbHz6kwvZbgZDQom
         h+EQ==
X-Gm-Message-State: APjAAAUaHgb8WUKFMu7c5h3qEOIbc630iDH+DN7PSyzgli3gdb2JivUa
        IOPWA1b3sQOdu4FN1ZdiT7H7xU+N8w==
X-Google-Smtp-Source: APXvYqzk8eKOD3frkcLzlds2C01g+sN0sxg0O2G3YSpFDGZT5SsHZOFNFBQC2tcQOPvfBufe1rNfAw==
X-Received: by 2002:a63:5423:: with SMTP id i35mr5944969pgb.179.1581026157198;
        Thu, 06 Feb 2020 13:55:57 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net. [63.158.47.182])
        by smtp.gmail.com with ESMTPSA id f18sm368874pgn.2.2020.02.06.13.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2020 13:55:56 -0800 (PST)
Received: (nullmailer pid 17174 invoked by uid 1000);
        Thu, 06 Feb 2020 21:55:55 -0000
Date:   Thu, 6 Feb 2020 14:55:55 -0700
From:   Rob Herring <robh@kernel.org>
To:     bage@linutronix.de
Cc:     devicetree@vger.kernel.org, Bastian Germann <bage@linutronix.de>,
        Benedikt Spranger <b.spranger@linutronix.de>
Subject: Re: [PATCH 1/5] dt-bindings: Add vendor prefix lx for Linutronix
Message-ID: <20200206215555.GA17101@bogus>
References: <20200206113328.7296-1-bage@linutronix.de>
 <20200206113328.7296-2-bage@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200206113328.7296-2-bage@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  6 Feb 2020 12:33:23 +0100, bage@linutronix.de wrote:
> From: Bastian Germann <bage@linutronix.de>
> 
> Add a vendor prefix for lx, known as Linutronix GmbH.
> Website: https://linutronix.de/
> 
> Co-developed-by: Benedikt Spranger <b.spranger@linutronix.de>
> Signed-off-by: Benedikt Spranger <b.spranger@linutronix.de>
> Signed-off-by: Bastian Germann <bage@linutronix.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob
