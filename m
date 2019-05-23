Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4D2428051
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 16:57:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730741AbfEWO5f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 10:57:35 -0400
Received: from mail.kernel.org ([198.145.29.99]:54732 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730709AbfEWO5f (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 10:57:35 -0400
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 014C92175B
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 14:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558623455;
        bh=86U584cfMubHTeQeRMyMXYE9myTkMGFnLep8+DNHTsg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=aSXkLHzfTb0OmpCplI/3bhak/9Lsrvq2yyrquEaUuMGB1/8jpk8DzAsqPJQqPT4ew
         OHgWaWwiHYS/zvZw8T7lfAqEE1Kmc3wgjouMnuJ7JkePo6pvCXvT12od8v8ZVDNK7y
         nyEn196C7ogTI3IUgEWfmG7X1CPGZs1Evtq8vsuM=
Received: by mail-qt1-f177.google.com with SMTP id l3so7078629qtj.5
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 07:57:34 -0700 (PDT)
X-Gm-Message-State: APjAAAWwrl0P1XEwWos34WfTneDeKuBKMDb4blgWQjHQi/o5YdJL7Ogc
        bcebvKlgzA/pBIKfcWe2mhYVUARvJK6JZWzy+g==
X-Google-Smtp-Source: APXvYqzGpjupC7iWkpzfQkDSijO5KdYs627pb5zV6oWOI+jJmQlbjWDJ665tprytzZnQhCdokhfGu+oWljV/B2CIJhw=
X-Received: by 2002:ac8:7688:: with SMTP id g8mr53598235qtr.224.1558623454253;
 Thu, 23 May 2019 07:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190523081415.29870-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190523081415.29870-1-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 23 May 2019 09:57:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKLVkM6ygAmLsgF+rxAOxdiqBP2i+J1wLNfDeYrPd2JcA@mail.gmail.com>
Message-ID: <CAL_JsqKLVkM6ygAmLsgF+rxAOxdiqBP2i+J1wLNfDeYrPd2JcA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Add vendor prefix for Espressif
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 23, 2019 at 3:14 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Add Espressif Systems DT vendor prefix. That prefix has been used for quite
> some time for WiFi chips, but has never been documented.

Just 1 of about 100...

Here's a script to generate a schema for compatible string checks. Not
yet sure what to do with it or how to integrate it in.

#!/bin/sh

vnd_file="Documentation/devicetree/bindings/vendor-prefixes.yaml"

vendor_pattern="$(sed -n -e 's/.*\^\([-a-zA-Z0-9]*\),.*/
\1\|\\/p' ${vnd_file})"

cat << EOF
# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
%YAML 1.2
---
\$id: http://devicetree.org/schemas/compatible-vendor-prefixes.yaml#
\$schema: http://devicetree.org/meta-schemas/base.yaml#

title: Devicetree Vendor Prefix Registry

maintainers:
  - Rob Herring <robh@kernel.org>

select: true

properties:
  compatible:
    maxItems: 32
    items:
      if:
        allOf:
          - pattern: ","
          - not: { pattern: "^usb[0-9a-f]+," }
      then:
        pattern: "^(\\
${vendor_pattern}
          ),"

EOF
