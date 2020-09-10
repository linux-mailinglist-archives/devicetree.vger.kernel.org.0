Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9FCF2642C6
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 11:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730395AbgIJJtL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 05:49:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730257AbgIJJtH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 05:49:07 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7BB9C061757
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 02:49:06 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id ay8so5624083edb.8
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 02:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version;
        bh=+nnm9BXqafE/FDvFW/KQ+vqXtpX/12/KK71uDZZ++kY=;
        b=S36d+wG8zLWz+Gzwo/f8s5vcy9F4lRF7s6PS4Zs8zXBC7Ovqjo3S1m55kIPRT4vsId
         cku3TPgQ4tcMbz1mdQtfyLQ1R0OBWAmfw4BWntl3L4r+Qo0L/qmQ3SgVAulS3aFdcOk4
         6NUbopDyxJYka77t9oHquxjsQZyJ2UhoggflvzSLGg9RbbJs1NSjp9HKE1wYsT1zI/gS
         3EDErlaQ/IcS38itNRA2VwH7JAjXw8sFXxTqgR4NSD9qzhBbad8JIFvmeX3FqpDNx9Xj
         ok8qLq1drBHoVbBmkIdg8sU1iNMY3XFgeshKrMkJc8UNZlcVfCVIRTUiIentDXYdIZyW
         e14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version;
        bh=+nnm9BXqafE/FDvFW/KQ+vqXtpX/12/KK71uDZZ++kY=;
        b=ShluhcuZS0lvFMBEDzfKQ5XO8vMntuLIKYAMJtKt10Z8rCJqHQpLS+xm/KPWZj54eQ
         Nd9mV64lUiU5GsRnzF4Ec4bz0Q4FIVTUlNKXV5qA5daUFexuc4AwZ+sVv4nbkU0UmSAY
         /qwYdiavJcI48mV0Gh+zTQbpBJkCwA/Ieu9mF6Eu6wPz9Fo3T8Nr8/BAsIm+lfF6rwuK
         MuAKkkMJ5c1TGpCQHYqpPp+YIqhNY3WcIra1gi+d1hl5+UdvxBhwLZWMtbrUO0esZ/HQ
         9Fjip01y9tRnkuQfHC7PbVTcWzOkLVlnl3F0jini8jvovyNk3NcqVIEiYzZDqbgTwA7V
         xVQA==
X-Gm-Message-State: AOAM5314GwO2S6HpBX/g1fALu8f6T4bXHJiNkXveFYa+C2/EnKjw2nUX
        gimMnuiD6GLwSBPxItXRhTaFHg==
X-Google-Smtp-Source: ABdhPJw201OWJh7qykUkjB31eTxWyErlzB+x7CVYxeqsXmzk8Hk4kfsUruIZR9aOu2UOPtXuvCvyHg==
X-Received: by 2002:aa7:d296:: with SMTP id w22mr8428632edq.327.1599731345283;
        Thu, 10 Sep 2020 02:49:05 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.gmail.com with ESMTPSA id i17sm5944547ejy.79.2020.09.10.02.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 02:49:04 -0700 (PDT)
References: <20200828154735.435374-1-jbrunet@baylibre.com> <159972433977.2295844.12910258806178190962@swboyd.mtv.corp.google.com>
User-agent: mu4e 1.3.3; emacs 26.3
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Stephen Boyd <sboyd@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-clk@vger.kernel.org
Cc:     Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: meson: make shipped controller configurable
In-reply-to: <159972433977.2295844.12910258806178190962@swboyd.mtv.corp.google.com>
Date:   Thu, 10 Sep 2020 11:49:03 +0200
Message-ID: <1jzh5y9d2o.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu 10 Sep 2020 at 09:52, Stephen Boyd <sboyd@kernel.org> wrote:

> Quoting Jerome Brunet (2020-08-28 08:47:35)
>> Add the necessary so bits so unnecessary amlogic clock controllers can be
>
> s/so//

Fixed and applied

>
>> compiled out. This allows to save a few kB when necessary.
>> 
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Thx

>> ---
>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>

