Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B76DF46F1EF
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 18:31:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242991AbhLIRek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 12:34:40 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:44993 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242968AbhLIRej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 12:34:39 -0500
Received: by mail-oi1-f174.google.com with SMTP id be32so9593713oib.11
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 09:31:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pAJH4u+DDb5D6XvFc4FGsB85Ta6s9TZ0YdZXh4TaPWk=;
        b=G90mzJLofW74LTOTDn5Bb1I/7XTxJ3R7FnIgrJz+Al0mB4Ua9oYlkEr2KBv+blvzzb
         wWJAPAAVqRYxc2CLhMvqQUsUHAF6Mj4HZ9Qv7DWhnKEEfnnflIWn/i7hVw5ws+IolS6B
         b+5xFznQA3SDnGy+0MTmR4a6GOJeH4mzW7MSF/SzBCCjkqY857vOnkhsilgOY7N+iqH7
         rfDbZEOJNuFPjdsPkL+sZcH4MaFicmzHu1ic870R/S21OTfzEeuf/ILFp+L6Zh6C9K5O
         zPMA4kzjafAvC8vEhLLnc3BYvQd9nhQ3uY6qipN1O9mDL+Oz57BjrTqOhZ92CLVFP98I
         x0mg==
X-Gm-Message-State: AOAM533iGZezuXaHM0NwQVE3RK2LEcLdgPo72pyfrBQw0gTmS2t4f6CV
        ScUrJp3gTgQyUW9BcF0TbQ==
X-Google-Smtp-Source: ABdhPJzDWaZYfioMtXaCbPf4Lmmi+ASP+Fm/JK0elXdB2MoQxV/3EIAgklPpR2xri+8sbbzzCxSfNA==
X-Received: by 2002:aca:280f:: with SMTP id 15mr7233763oix.129.1639071063719;
        Thu, 09 Dec 2021 09:31:03 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l24sm69395oou.20.2021.12.09.09.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 09:31:03 -0800 (PST)
Received: (nullmailer pid 3260018 invoked by uid 1000);
        Thu, 09 Dec 2021 17:31:02 -0000
Date:   Thu, 9 Dec 2021 11:31:02 -0600
From:   Rob Herring <robh@kernel.org>
To:     Hector Martin <marcan@marcan.st>
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Rob Herring <robh+dt@kernel.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Sven Peter <sven@svenpeter.dev>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mailbox: apple,mailbox: Add power-domains
 property
Message-ID: <YbI9VnwuHfllZ+pH@robh.at.kernel.org>
References: <20211209045042.67781-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209045042.67781-1-marcan@marcan.st>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 09 Dec 2021 13:50:42 +0900, Hector Martin wrote:
> This will bind to the PMGR pwrstate nodes that control power/clock
> gating to SoC blocks. The mailbox driver doesn't do runtime-pm yet, so
> initially this will just keep the domain on permanently.
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>
> ---
>  Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
