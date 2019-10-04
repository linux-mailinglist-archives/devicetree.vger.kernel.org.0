Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFEADCBDC2
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 16:46:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389113AbfJDOqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 10:46:50 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:33282 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388982AbfJDOqt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 10:46:49 -0400
Received: by mail-pf1-f193.google.com with SMTP id q10so4077280pfl.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 07:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=vrpAOV+426YcY2dvYTmCxBoSkb9QFrfgtxFZXoZ1T88=;
        b=E58EWgdvs+fgVnvg68jCcK9hRiNmsBZbNXQogt2zXknBgToFwfqE6QOOuIFjqqHiax
         S8ZOe8VERGUSJ9gIbHp5qxn/GdXNf9FhWJEpC8litDvzuoUo8e2lSNjDdPmcFbrqBjau
         BmoWDjGYpXlEO+iu7lNKfeAu/ekV5SLtUGlrBj6KKzwFMS3l6BhQ5kILJTf5/CAZx+HR
         EChLHgj7yy/w6tFLYDkPTk9kJihy3j/McdB1+dqHozQsYFHeMqMqfDhRNyNUE+oEZ4tL
         qPEqEF/YZ+4o4SD+navIpoAXd2lVnDGbh03yyds24AUDBUJc10AckJtvWagyhV32YrRw
         dyVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=vrpAOV+426YcY2dvYTmCxBoSkb9QFrfgtxFZXoZ1T88=;
        b=JG7iqg+kCkARkLeIEtCR9BbDmOLtS4IaD7lsJSph9SlbANmN6/1aH5IejgwUk5KpWo
         BshGZRTXJuA/VMgC+2Teb57AOqGndudrmq+gHNv/7q5CI/xZZYwScynwhRpAXC0Od9Cs
         WVZ+wef4XZ3SZBxfuKYZGFtbKXOZk/HeY0rR3TkxH/7eQKgHYos+4xdHsLSM85Zxq4WY
         f0wVlsqfwFSqXiPOj5EJvRxWUsh0yJtpmg4wNo8Q21tkNGPPWLOYpQaLniMq/G9GMqzY
         mQ7GwiXAL709WDsQewmqjs69i2HIkvHjuO3dhGt0peiLpWTlPj+j+bZRDL/3km9qcpUn
         Y75g==
X-Gm-Message-State: APjAAAUe3vXcyGPmEUEcJoUebXwvvGwmGzTWAmvyzl1j3yxCTGXkUNDd
        cDQTf8kJSYY03ehBkgXcW52YRA==
X-Google-Smtp-Source: APXvYqzOUPGXab6AXJASP225dZhPjVnVqdYiSvOwfHQmdwXVgOva+jxCkR0avI35E8JbEplmXeZ7fQ==
X-Received: by 2002:a17:90a:cb07:: with SMTP id z7mr17162183pjt.67.1570200408918;
        Fri, 04 Oct 2019 07:46:48 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:6c63:e3e5:f440:92c9])
        by smtp.gmail.com with ESMTPSA id w10sm3834115pjq.3.2019.10.04.07.46.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 04 Oct 2019 07:46:48 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Philipp Zabel <pza@pengutronix.de>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] reset: meson-audio-arb: add sm1 support
In-Reply-To: <20191003180311.hlv7s32twzcaxj3x@pengutronix.de>
References: <20190905135040.6635-1-jbrunet@baylibre.com> <1567693618.3958.4.camel@pengutronix.de> <1jk19oregr.fsf@starbuckisacylon.baylibre.com> <20191003180311.hlv7s32twzcaxj3x@pengutronix.de>
Date:   Fri, 04 Oct 2019 07:46:47 -0700
Message-ID: <7hpnjch8ko.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Philipp Zabel <pza@pengutronix.de> writes:

> Hi Jerome,
>
> On Tue, Oct 01, 2019 at 11:40:20AM +0200, Jerome Brunet wrote:
> [...]
>> Looks like this patchset missed v5.4-rc1.
>> Could you provide a tag with the bindings to Kevin so we can use the IDs
>> in DT until the next merge window ?
>
> Does
>
>   git://git.pengutronix.de/git/pza/linux.git reset/meson-sm1-bindings
>
> work for you?

I'd prefer a tag as that's more of an indicator that it will be static,
but if you're sure that's going to be static, and is the same branch/tag
you'll be sending upstream, that will work.

Kevin
