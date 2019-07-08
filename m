Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 07B6961D80
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 13:04:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727517AbfGHLEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 07:04:55 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:34350 "EHLO
        mail-qk1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726175AbfGHLEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 07:04:54 -0400
Received: by mail-qk1-f170.google.com with SMTP id t8so12929851qkt.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 04:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kp23LTJPz/eUy3KAi5g/b/CIcmzamMaEiPQ+c6HxoVY=;
        b=aeq6msnujeCPEJK27xnUjHXSK62m4D7EGwLjU8EGYyVz6AOw/ZP7U520jWvbZmHEu3
         0FIKMnXbYvjtr4rNp59X3BAizblCKThkp7GKtSwxVtJmxxQX8KSPdRAtpVAVxFmaAv2G
         itGjNu0/5DYeUnuDPGBD5txKuzcon7yKPHLKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kp23LTJPz/eUy3KAi5g/b/CIcmzamMaEiPQ+c6HxoVY=;
        b=AJ3ASY7BjB3SNJl8MBiq3xhHDWOFc4vtX4UyzPGFz12GEvSFSjhOCeBeZsu52WdhSU
         L7rb4ARDLaTle8f1zy4Cmqykdx+U0SAdEFJsRmE7H+ygGQdrXlO01Vr9jQlPq6Dg58TZ
         G+APgVmiGFMKHOG/iWYD4oZ8QArzC8otrhBMv0fIM/SnH+CaOzPszsgxZe0BdS9OfOLt
         uGohOWFuizwYKeWLQ21aU8vJpsPxGC6gHdu/EM6NNznkjsQ0M8TbTnUJTf1iyiHE5Y9v
         WSX94t+ppEYOXdtMrwkjWAzkvUrHJ4YrTJQTDz83ItyprI/Z5tJddup5btMdLQG24uh+
         QCgg==
X-Gm-Message-State: APjAAAWgUObnHxuSKgdSL62QVvirs8xv6xlxvNnE5/tV/lJG0JNOVT0m
        JDpOcAaUCPi0pSkLnzgaWYwAWzWqGKY=
X-Google-Smtp-Source: APXvYqzGL4ug5UyKvIArGnEgUsZlTgBvex8O4LhgwBaER9txAnnrsYOuP6lR8xmORa/uSJrWrknIkQ==
X-Received: by 2002:ae9:ef0e:: with SMTP id d14mr12223983qkg.382.1562583893323;
        Mon, 08 Jul 2019 04:04:53 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id z19sm4334617qkg.28.2019.07.08.04.04.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jul 2019 04:04:52 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id h21so15349906qtn.13
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 04:04:51 -0700 (PDT)
X-Received: by 2002:a0c:9608:: with SMTP id 8mr13983354qvx.98.1562583891554;
 Mon, 08 Jul 2019 04:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190619084110.136713-1-tientzu@chromium.org>
In-Reply-To: <20190619084110.136713-1-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Mon, 8 Jul 2019 19:04:40 +0800
X-Gmail-Original-Message-ID: <CALiNf29kZ+PYx_jZQKRTcvJqOa6qOYpbXNQ9bryYMw6E0_pNfw@mail.gmail.com>
Message-ID: <CALiNf29kZ+PYx_jZQKRTcvJqOa6qOYpbXNQ9bryYMw6E0_pNfw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Greg KH <gregkh@linuxfoundation.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        changqi.hu@mediatek.com,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gentle ping, thanks
