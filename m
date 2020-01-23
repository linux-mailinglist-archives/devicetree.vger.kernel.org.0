Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EA93E1472A4
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2020 21:35:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729095AbgAWUfm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jan 2020 15:35:42 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:33720 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728984AbgAWUfl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jan 2020 15:35:41 -0500
Received: by mail-oi1-f193.google.com with SMTP id q81so4271180oig.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2020 12:35:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CXC08EyfMt/GGoONTpMPEIJW94PHuw0369iLCTfiLCc=;
        b=cyx8/WxsA+a6VBPYpzl9UMa/QqOcf9Y5TdWr47BWI5pBrhlzRTRyR5hXbkQXXXVH/C
         yAVlNdLcmTXeEnfxk1XIXz9aWdZdTGvLVzteQaN6+NkDqgH51HMqvhv3grXSvddQRh2k
         lWgzbwVPQmIiTrvJUn0Fp+sdfEqX7kgpJtfzBB1lnAZGqt7b5jCT/AzJd0G0oiq1GUrw
         7QzP1DCkPDNU73YdsNrE8SS6RtsRLf1+4reft7C1Lw4Cr+7qLXxsoi8n1jKMfVzf7WcD
         zvyHbJ5LM81yXj8p3MqtcRtiSb9oPql0TgSNtwOwsqCRpDEb+XfxuzFFW9Eh8VB7THax
         JrSw==
X-Gm-Message-State: APjAAAUkV3CR8CAHam8z33GOnmrAXzC4xpCH3TmBNltDd16UVybGcGOR
        hazmaRCs3z5YYxEgTK7ALA==
X-Google-Smtp-Source: APXvYqxnz0ftwfRjCx8GePtHBiPcOVNyVFWsubNDw+j0+6/ZD6cp/ZRraqg5vbcOiYwRol862jxHSQ==
X-Received: by 2002:aca:fc47:: with SMTP id a68mr11530454oii.52.1579811741236;
        Thu, 23 Jan 2020 12:35:41 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m185sm1028998oia.26.2020.01.23.12.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 12:35:40 -0800 (PST)
Received: (nullmailer pid 22554 invoked by uid 1000);
        Thu, 23 Jan 2020 20:35:39 -0000
Date:   Thu, 23 Jan 2020 14:35:39 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Be explicit about installing deps
Message-ID: <20200123203539.GA14959@bogus>
References: <20191031090602.28640-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191031090602.28640-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 31, 2019 at 10:06:02AM +0100, Linus Walleij wrote:
> Make sure the reader of the document is aware that some active
> installation of the libyaml development package is required and
> provide two examples.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/writing-schema.rst | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Sorry, I'd missed this one. Now applied.

Rob
