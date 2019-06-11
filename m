Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 05EBF3CAFA
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 14:18:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387780AbfFKMSP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 08:18:15 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:42840 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728661AbfFKMSP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 08:18:15 -0400
Received: by mail-qk1-f196.google.com with SMTP id b18so7446514qkc.9
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 05:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g5i49l4VfJcEzoWbFwIf3HpGCD6+/0Z2WJ63n1g5Dzs=;
        b=lHy7l5iuNJJVbYGg8Pr0qdGaYDIgmTC+o3rhUwXxq6E9ILKH7VCOaCqdgmCNguSS67
         vt8hDhDUDyKbztEdmsIKJkY9vPCRWlvo1bCPp2rQMKZ5aUd8ySk5+c8Jxu5mnklh0jCI
         P+S51JBU0KBY570Wejx5bk/w9W8LJJO1ipYAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g5i49l4VfJcEzoWbFwIf3HpGCD6+/0Z2WJ63n1g5Dzs=;
        b=KrqzsVQGjd1DsdYKPdPVMjx1cuwpGK9Pn0LNgIHBgJ6CC4JTyupf/pbHMh5hpPlaxB
         +RV39/Y1wpoVOiN/b76wRanXI/+oPMq073vTCC255OmDlhCDGdYkNBu2UwQKOdRkQcK+
         oozTE/dOtkyAVklG9/BPbytkYQGMui0oWs8YOuhaNS25Y9DVkBmon01XDAa59S2NYo28
         B4m/xeDeyZPETlK7Xk6TjYlF9QMFEINarmb8xeXNWwF6PJEjNSbz55HZ39Mey2gM5RjG
         LL7aJYYiLLov0ODKBiATQGAWV0NHQwhFM8T8cXT7ypYWb+3K0n0J/feAyolTKM/AF/2+
         9TKA==
X-Gm-Message-State: APjAAAUwMyWhIWnBYdeNKSFbTDafQyRGAVl7ovj0cHG4QCLTcv28/1oD
        +V0O4Ptu/INtaPDqMZyk9MXXCMs72HU=
X-Google-Smtp-Source: APXvYqwXOZCW/4HP5AyX3ZyMxLOYkC5pUalwQEziynxsspH85rm9wUIJKDZRBCO3TxluNedgKVlHpA==
X-Received: by 2002:a37:a86:: with SMTP id 128mr39783392qkk.169.1560255493948;
        Tue, 11 Jun 2019 05:18:13 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id n19sm5657341qkg.58.2019.06.11.05.18.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Jun 2019 05:18:12 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id m29so14199546qtu.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 05:18:11 -0700 (PDT)
X-Received: by 2002:ac8:7346:: with SMTP id q6mr46465019qtp.380.1560255491256;
 Tue, 11 Jun 2019 05:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190527083150.220194-1-tientzu@chromium.org> <20190527083150.220194-2-tientzu@chromium.org>
 <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com> <20190611095752.GA24058@kroah.com>
In-Reply-To: <20190611095752.GA24058@kroah.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Tue, 11 Jun 2019 20:17:59 +0800
X-Gmail-Original-Message-ID: <CALiNf2-79LEg+dvSqQK8kVkf99ARLwy9uLCmJNgq-vJO9r0a9g@mail.gmail.com>
Message-ID: <CALiNf2-79LEg+dvSqQK8kVkf99ARLwy9uLCmJNgq-vJO9r0a9g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: add documentation for Rx
 in-band wakeup support
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     changqi.hu@mediatek.com, linux-serial@vger.kernel.org,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

resent here: https://patchwork.ozlabs.org/patch/1113768/
sorry for the inconvenience
