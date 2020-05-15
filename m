Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D95E1D5A27
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 21:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726614AbgEOTkw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 15:40:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726168AbgEOTkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 May 2020 15:40:52 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7362C061A0C
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:40:51 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id g9so3152689edw.10
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HHca1qoV7do/YHj6VhiHa0wv0gL1FKGrqV5m6xaYOco=;
        b=EQXfVFJ4yz515JshhnvlO7USDVNFwG69NR5tuhWjf7zaSGV2LSZOG/FpNAtUosLSnU
         9ts0wbGytpuSheRP3ZoyHaJVy+JsQ1Z1Cvaptopb1n0wqaABjBwhlg6Tv1gRZWEWU5N7
         Xf1NHtzI2/d6wc9/JoXFFotJC6AdETHGlu7ZPHF46mQb5LSagZDXg01u6m6RSJHqGCsX
         G8zguFhZtGVf+wbDNstxQsF4RSs6m0HY3WenqGd6CGw5+MyM67ss838sKv8JWxkfdLV5
         BSMpNrRreffqc91pQEzZgU61/CDkmb2Sw9K1pJvrh01opTu3O/0yWLHR5K/QMsJImlTO
         jHLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HHca1qoV7do/YHj6VhiHa0wv0gL1FKGrqV5m6xaYOco=;
        b=FezZacuLc9CUinq0wiaBCvdb2xCYRn365+R33DAi5NJ/IxVPFJkH5xggC5Vbps7KMk
         guM7LxK6qHpiBRq1W45hnSMbtx+2k1PlnlT0GMbeqJQVYFbDZy+HG+dKeiWKN1bM6VJl
         pWuVZluIMx07BCS8Yzfsh7AdIRs09c3UqOrO+CMlEKQqOhxETYrm5EHxkR0V/oUVqI8T
         zrqMboR/NgYqBlP3x3NV4CBELmZcNzq9A+fNQerLljLtjisif0MZhvO8sqEtQOQaeWEm
         d2ouZLCqUJwFh33HCvZ2u4/0NFzLvuMBv+Y4tpu2AN3IeHUSgDp3uDkvFVN1LYaLjH2h
         22gg==
X-Gm-Message-State: AOAM530/P1jFFTfnf23NrmcAS5TX24KAeI3+hEbzELnom4LIyoKuAw6w
        5xyjF1vsLiOtkdPybrjfT8Vmjs3cor88a6au/3CO0Q==
X-Google-Smtp-Source: ABdhPJy3hW9KN8C+0k3e1QtNg/q5jcxANsOo4JOf1UIs/QMiOLnU+PzMoJv7/O4icSIDCXxitbkF0rZPLnkBSitoNmc=
X-Received: by 2002:a05:6402:31b1:: with SMTP id dj17mr4543330edb.142.1589571650510;
 Fri, 15 May 2020 12:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200515184434.8470-1-keescook@chromium.org> <20200515184434.8470-6-keescook@chromium.org>
In-Reply-To: <20200515184434.8470-6-keescook@chromium.org>
From:   Pavel Tatashin <pasha.tatashin@soleen.com>
Date:   Fri, 15 May 2020 15:40:14 -0400
Message-ID: <CA+CK2bCbAb1EN6xa9a-DRfan6Cv3YgZgPJ1buwUaej7jBRv=Kg@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] pstore/ram: Introduce max_reason and convert dump_oops
To:     Kees Cook <keescook@chromium.org>
Cc:     Petr Mladek <pmladek@suse.com>, Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Benson Leung <bleung@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

 pdata.dump_oops = dump_oops;
> +       /* If "max_reason" is set, its value has priority over "dump_oops". */
> +       if (ramoops_max_reason != -1)
> +               pdata.max_reason = ramoops_max_reason;

 (ramoops_max_reason >= 0) might make more sense here, we do not want
negative max_reason even if it was provided by the user.

Otherwise the series looks good.

Thank you,
Pasha
