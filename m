Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3AB66164F83
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2020 21:06:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726651AbgBSUGF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Feb 2020 15:06:05 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:41730 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726634AbgBSUGF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Feb 2020 15:06:05 -0500
Received: by mail-ot1-f65.google.com with SMTP id r27so1376855otc.8
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2020 12:06:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PMiPmtnVcRtQuuVXUkzcuK8mP/mgq/WYKhNUinVCtqI=;
        b=G7dq152eJ+ubu878Xtm2p4chW6aPvaKW1FgrFnlIenYyb1v4L191GUjI7hAoZ33YfY
         iq8IhYz7zwCgukFwMHqbTGtcdU86AzH2Hdw6mc6YFXwJJmj6Jg5HniDswl1jg3+7BciK
         8odjklvqbUn92FkpYEtdUFL8W/WQgujmv+S6MGMdERm3EEYYyz9GF/yYI8WHTllcaKXG
         TP3/fvZAm0GVty6FdgX8qroNEcBP9EE8kH3yHnt2gmbon9xD9xkzbnoGpOzwLIsEYH7D
         6CmAl7tbtbfC8iarycp+yGoYbBJmQlOJOjkWDG3xxaPVKWiZSp+QcuCM0n0mZ0b3mqh/
         eDHw==
X-Gm-Message-State: APjAAAWSg5fQDJXFy8JZG1rQdRzD32PiZE+73/25WEyaRGZM7lG+lS1M
        Rw/99oXRcijhJUPBgUfIL2ybVyXUig==
X-Google-Smtp-Source: APXvYqxfR4IAZl8EANdQf8nAOzf+u9uAMHLdahvheRvuvuPF8YZVRxBkTHadhvOdr/HKnX7kN6bOHw==
X-Received: by 2002:a9d:7696:: with SMTP id j22mr22136279otl.188.1582142764185;
        Wed, 19 Feb 2020 12:06:04 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 60sm265245otu.45.2020.02.19.12.06.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 12:06:03 -0800 (PST)
Received: (nullmailer pid 17037 invoked by uid 1000);
        Wed, 19 Feb 2020 20:06:03 -0000
Date:   Wed, 19 Feb 2020 14:06:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     bage@linutronix.de
Cc:     devicetree@vger.kernel.org, Bastian Germann <bage@linutronix.de>,
        Benedikt Spranger <b.spranger@linutronix.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: Add vendor prefix for Linutronix
Message-ID: <20200219200603.GA16934@bogus>
References: <20200206113328.7296-1-bage@linutronix.de>
 <20200214111003.11115-1-bage@linutronix.de>
 <20200214111003.11115-2-bage@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200214111003.11115-2-bage@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 14 Feb 2020 12:10:01 +0100, bage@linutronix.de wrote:
> From: Bastian Germann <bage@linutronix.de>
> 
> Add a vendor prefix for Linutronix GmbH.
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
