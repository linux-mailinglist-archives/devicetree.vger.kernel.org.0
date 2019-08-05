Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38F0881747
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727357AbfHEKnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:43:07 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:39581 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727349AbfHEKnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:43:05 -0400
Received: by mail-lf1-f65.google.com with SMTP id x3so3770447lfn.6
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FNuA6/9fhDtZ2LA/XhT5TM5n9GcO4T42zHctSuCq+QE=;
        b=ZqKWS/7PAIhTkrjtw+GzHRAkD9966ILvMv4i8DSD/p0C0m6oeCBA5UKCB22elJeNfJ
         zWiKm8UHSaQlH8pUZ3AZbvyx4ZBqw6BkeYLgJireYNPJmj0q2uqDnTzJCp/jQxiaax89
         XCh32PWzJhWMXrG0JnXQJjWeNR65juG44BK9cUuZ2gKq8V14CF8zLoJyE3HcYK+XMi2Q
         DQtRf+3O3nR21FO5G/p3IrM7QSNRG15P4rv6CZEdT3mTViEGqgzNB+Lz65tM2cCIbL/b
         Mdp/TrttDV5dSNyEqTNV3L8pbAvkos2UKTsF8pX+/GaSCsnWP0IqyW1tDstJWH/iA/sw
         MBQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FNuA6/9fhDtZ2LA/XhT5TM5n9GcO4T42zHctSuCq+QE=;
        b=LgseUfYNRv1tWgD+r7SjOD7c4A8wwCScRth1LfqxIlvXC8cLDh9pCYUDAanfT4/mp1
         4/X9wg08KOpng6JeVmNbxzttUj5w8T7XK7rKRA92R+4UAamGlnDCdX+rtnvuiGj+xEaP
         4Jfg2vZi830cZfE722aCawBxkknItjjLyx+AMhlal75XfSXT2iE5ipffaWFq80HWF2Fs
         /wbVVoe9mwz6DFOkDoRPWtHLWdTlEkCncbwW4bWevkW64YiQ1KgX2ylCki9zRBlP11sR
         Vwt2tt5iabxkIUrsbC82qbP+dfbQaVTSm4ARPuWUm+wfEoxclwlFPVkOvVXXNZidcJ89
         /Qbw==
X-Gm-Message-State: APjAAAW8H1Te3ocX3x3O6U4x0svMwbXtnYZ2W3RPR6Fuzb+gtoH4T+2A
        HVU/WeH6d0jfAk2+PE0R5Ajz0M/qq0qqGA1u5+n/iw==
X-Google-Smtp-Source: APXvYqzUEX+wRaUh5h+0CMDXrhYbMXJyYq5FgUc0gxHkybrHmYXBX420COs0UI1eqAlKWrcY6dDdA4a4Mno7k+9cWAE=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1415879lfq.152.1565001783694;
 Mon, 05 Aug 2019 03:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190711041942.23202-1-andrew@aj.id.au>
In-Reply-To: <20190711041942.23202-1-andrew@aj.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 12:42:52 +0200
Message-ID: <CACRpkdac+yqO9BEJ67UMD=uQVfMzE=s9oHqaSOB20-OboBMVVw@mail.gmail.com>
Subject: Re: [PATCH 0/6] pinctrl: aspeed: Add AST2600 pinmux support
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>, ryanchen.aspeed@gmail.com,
        johnny_huang@aspeedtech.com,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I applied this series now!

Thanks Andrew.

Yours,
Linus Walleij
