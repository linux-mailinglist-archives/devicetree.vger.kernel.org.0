Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2934E134881
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 17:52:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729472AbgAHQvx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 11:51:53 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:44196 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728724AbgAHQvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 11:51:53 -0500
Received: by mail-oi1-f196.google.com with SMTP id d62so3185767oia.11
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 08:51:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RdLh0q0CRLfYxhapthejt2exqdzrEcPaVCdlxkRkk04=;
        b=ZI6FU6Eyv6qFre2YsqMqV8iVIVvd/oiTOnjrSqn5BBYTaejUD1ZNqajWBhT3oZPVKl
         uXNGwr05KwTWRgJkf98IvjaKN/3PUjM8th+U9h6A6DRoSub/KKboy2OEwuSryErssjnW
         MYJNhJU6NcfD5p3VyQBVMWjRLJi5pYAROyzBlt6snsbMJWL6VsfCQWq6sD8BWVR634y5
         YmJZ9rH99s6BwijuwUJQvaszrm9oz0mwIGJuCwBlmmcTq8qeBHha5AYWBElSJDU08dcv
         KYXZKEPtZFrlM5HPfyiHS6ZV2p6Sc4UTu6AE0hNF0BwfcsexpoCO45ehLw9FFXtvdRhY
         l5Sg==
X-Gm-Message-State: APjAAAWDoXismkCrT+IPanQYoA1ZdH7x/8oc1S4P2z5J95o/R5uGbAhM
        RuUqZuR1cs0A0bcI8rT22L33NRg=
X-Google-Smtp-Source: APXvYqwJw+u1CGF/JOVqzoq8k0sZDr6ngKNfSz010VbKs2m1Wn9eqpThkrcUWdiX2dbybbcqYHsdiA==
X-Received: by 2002:aca:570d:: with SMTP id l13mr3681408oib.146.1578502312231;
        Wed, 08 Jan 2020 08:51:52 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p184sm1237687oic.40.2020.01.08.08.51.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 08:51:51 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220333
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 08 Jan 2020 10:51:50 -0600
Date:   Wed, 8 Jan 2020 10:51:50 -0600
From:   Rob Herring <robh@kernel.org>
To:     Yauhen Kharuzhy <jekhor@gmail.com>
Cc:     linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yauhen Kharuzhy <jekhor@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: Add new chips to bq25890 binding
 documentation
Message-ID: <20200108165150.GA30408@bogus>
References: <20200101224627.12093-1-jekhor@gmail.com>
 <20200101224627.12093-3-jekhor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200101224627.12093-3-jekhor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  2 Jan 2020 01:46:27 +0300, Yauhen Kharuzhy wrote:
> Add bq25892, bq25895 and bq25896 to list of supported device IDs in the
> bq25890 DT binding document.
> 
> Signed-off-by: Yauhen Kharuzhy <jekhor@gmail.com>
> ---
>  Documentation/devicetree/bindings/power/supply/bq25890.txt | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
