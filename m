Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 668D311690
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 11:35:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726231AbfEBJfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 05:35:47 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:37292 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726202AbfEBJfr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 05:35:47 -0400
Received: by mail-lf1-f65.google.com with SMTP id h126so1372592lfh.4
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 02:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gLiW98ObQ1S6YFlruRE9Fln9ldebb9TO3ZMt7eGSCa4=;
        b=kJ/VcYvHyjnVugkqfWENJv99k8g6t5EVlK98yNTP787dS27OlftIdT80tN/vQeycG1
         OLXK58RYd2gV0AN/zXDeGH/7jYGtSmh27vXpnBU5/WBtDMrT3yNMJrOeykV2L9OnsWaM
         k0q4Ul2eAe/YiFvguNcj0qV85L6744P18qUjYPw4QM17PauwU9dw7t1UKV9G5chzTd3a
         freJak4M0M62x1Vp4lr3/3hdFX7R67+cCzCHre8/Hj7YG2e6jI+b0DyXSqN/6XL4NYjv
         znUwLiR/WoEaDmdfdiNAWx58cuDsNy5tHxIkU/9FYUyI3Ot3Pd20VpxN4qkegjx0tHvh
         Kg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gLiW98ObQ1S6YFlruRE9Fln9ldebb9TO3ZMt7eGSCa4=;
        b=JFx4tGRzGEEplD7t7+4Vd1xVEE5AiVTDQSRTzoDlywBZeT5IAUjj43txZBjvE8qQQO
         hqsZKA13F3TOqcptzbXslTIJ/ivMMFFYGFLsKFrG3/dN3zWdAUq4sSV9jPZC90q5fWtL
         1y+adYf7sWIqEipuDsglpu+dSa+UxcJiEmt7kiVMJ3EVM1o6T86PUG+X7AUcMmw5JJBn
         Zk1hjiYZvrHMFlfu8BRLaZs8GYgZFmqB8O4bMpvRmsbLOA8TEK5ttwRfSJ6/hOv4adam
         K/t903Bu6VbpajxKeZExXEjmWiRcaJAp8QkRQXAte/ZU2+WeLLf/Rgv/KfGgF9Xoho3p
         7HkQ==
X-Gm-Message-State: APjAAAU42wHDeCDV24KDjJ5PlNPI5QW4MhwmCWnVT74DijVNsl3qs0fu
        kzthp6k9zyj5Yr60JiNYnwgUMkUzG3OdzamsawLGcw==
X-Google-Smtp-Source: APXvYqzbPMzpxD0RPAZhpWdShx/+nGO7oeIUDQ2/rulMH8m6jO3wZL7AozC29zzbdQkX6PEqZ8Xr/tJPlZ0x7ozzxpU=
X-Received: by 2002:ac2:48a5:: with SMTP id u5mr1414737lfg.115.1556789745312;
 Thu, 02 May 2019 02:35:45 -0700 (PDT)
MIME-Version: 1.0
References: <1556171696-7741-1-git-send-email-yash.shah@sifive.com>
 <1556171696-7741-2-git-send-email-yash.shah@sifive.com> <20190425101318.GA8469@e107155-lin>
 <CAJ2_jOEBqBnorz9PcQp72Jjju9RX_P8mU=Gq+0xCCcWsBiJksw@mail.gmail.com>
 <20190426093358.GA28309@e107155-lin> <CAJ2_jOEoD=Njp+L+H=jG59mA-j9SnwzyNmz7ECogWmbvei_f5Q@mail.gmail.com>
 <20190502004130.GA20802@bogus> <CAJ2_jOETZa_oC-xSwfQVw-9Q6OivRG2R0rKMhwCk1knbxWJQVw@mail.gmail.com>
 <20190502091044.GD12498@e107155-lin>
In-Reply-To: <20190502091044.GD12498@e107155-lin>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Thu, 2 May 2019 15:05:08 +0530
Message-ID: <CAJ2_jOG7a=gnxWiZ+mDW6KH9cWZC1HO7ZuwCiXBQJuNJJ1NBHA@mail.gmail.com>
Subject: Re: [PATCH 1/2] RISC-V: Add DT documentation for SiFive L2 Cache Controller
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh@kernel.org>, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu,
        mark.rutland@arm.com, Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 2, 2019 at 2:40 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
>
> Sorry if I created confusion. I just wanted a note saying all the properties
> in ePAPR/DeviceTree specification applies for this platform. That would
> help me check if the standard cacheinfo infrastruction works as is or not.

Sure, will add this note.

- Yash
>
> --
> Regards,
> Sudeep
