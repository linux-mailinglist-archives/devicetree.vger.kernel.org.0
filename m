Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 986F2D0224
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2019 22:32:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730781AbfJHUcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Oct 2019 16:32:06 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:45320 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727835AbfJHUcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Oct 2019 16:32:05 -0400
Received: by mail-pg1-f196.google.com with SMTP id q7so10890440pgi.12
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2019 13:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eG3/KTcN+l0J8/6h6CFjDe7V6XOLu3qvlhIP2AFfrys=;
        b=to94oEFRu7pxgY2G1Xez6EtBwR0f3yzChiGgys5tcUAprpjiFizEtLFTEfBhUswbwS
         +b6TW6lVGXl4mLAI4N3auzBq0yZMZCqptNh/Hrja7n2IfTO9vb/N15/IR8y0cnVkil3G
         XHH3y7a5zxQHC3wZYFFvm7Pqh5HXET1swlIRVWpE9Sywk5HGoA2nEoT+d/8bSrhOPgkA
         icePHEWyx6ekqLhZHjFp3fBjzhyj7hLulxxnd8XhpqLUycijtMwDhnxpgAq67FKnWR2y
         vdW6JNefJLtAVnRwzX/hGl9q6hjmdYUGPNbc/S+XjVI42xIfKYKlpbh7fzA40E8l+ekx
         UnTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eG3/KTcN+l0J8/6h6CFjDe7V6XOLu3qvlhIP2AFfrys=;
        b=poiFbfhnwBN4859zuVZHFs1gr1oN+C+0GCsAYCK7rgb2dSMO7o6A+1cmOpb3B7xMqj
         VsPtV5QfA1KDbiW+ITqEE6xp7s+q1CQQ+vIS4y3yqRai1l9EPv1iwtOchj7F4Jn0iz5E
         t4fHVB+0iN/IAmSsRjmoj8lf1d/I3INcNn0nwhChMiG6psjhIZZsKsJWlELOgZsVjyRf
         QaMd5wHtr3JEjy2TxS0HF2nQPRQvk9ooNbWbtjs8+LPC8UnKOq9yUhLoRPYsUQ5FVnIV
         7SJOHAMwO8oOd3PO4Co5NGMFfp0G+Cgme9Bb7nHy0LAGawdJco5XZryMk9EPQm/lQ3In
         OTZQ==
X-Gm-Message-State: APjAAAUDEDb72/ovCy2aIGPtEa2zuZG4NBBVcXW/k9w8ty5CC2/hKWS7
        cO0iD3dKRnUJOnMxO3PdIjIq3g==
X-Google-Smtp-Source: APXvYqzuXMuOJlcRChpjsyL5D5qPR+4R8/wPvf3J5IUiMHTYlcl02d8LMjqeowAKe6J+zFd5NRArUw==
X-Received: by 2002:a62:e21a:: with SMTP id a26mr6636688pfi.80.1570566723059;
        Tue, 08 Oct 2019 13:32:03 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
        by smtp.gmail.com with ESMTPSA id r18sm16766pfc.3.2019.10.08.13.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 13:32:02 -0700 (PDT)
Date:   Tue, 8 Oct 2019 13:31:57 -0700
From:   Brendan Higgins <brendanhiggins@google.com>
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
Message-ID: <20191008203157.GA184092@google.com>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 07, 2019 at 04:13:11PM -0700, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger the master
> command because this H/W is sharing the same data buffer for slave
> and master operations, so this commit fixes the issue with making
> the master command triggering happen when the state goes to active
> state.

nit: Makes sense, but can you explain what might happen without your
change?

> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Thanks!
