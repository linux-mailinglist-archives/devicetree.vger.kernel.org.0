Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB9B3255806
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 11:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728362AbgH1JvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 05:51:22 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:39742 "EHLO
        mail-ej1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728218AbgH1JvU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 05:51:20 -0400
Received: by mail-ej1-f50.google.com with SMTP id s19so709543eju.6
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 02:51:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=DpBBWUcbEuSZLEDqa9iOVvsqKufJuPVuZV7SdH0Df6g=;
        b=jn4Ep1Wsj8y+Oin0G/nREVVUVO1Qh3t6Yu9f8BJ3gSsN8Ebm5FQQqEuGl4p6/T6n98
         kDWBcpGBaUM52R027LKCnCZd9pkO8hdYAVQrRZebIFP3R3ff5Qi7UhfqjzQ4aCM4RRs+
         3+zlqFhLkvsS5to53wjVuyE9sBq0GoPNdqjGquke0PgBdGr2x9dlYAXEaME/dvDqfAey
         3jCFD0RD1gJW/O1aCb5TyJN2At7R8ZBuvhVldOMJZ4G0y4nmivTnBtV0w0/JkAEZKj5y
         rBkc+g0+nO+ZMWAibxPwqDcqNLDUPIsLS+HC3OBp5QoffW/trzfiiNBY5WoTF128LXf+
         Ggrw==
X-Gm-Message-State: AOAM533Sqq/6+WYaFa9ArQsRn0LqOVXW3PkjiEt36AFIrmJK2/f+i+ua
        xKbs08BaD0PwC2bwMKubVp5kh/VdQaK88DeC
X-Google-Smtp-Source: ABdhPJxe6OZifw0Tw0GZM/HNQkslEocp2yE9jVzINE9JReFOaWe5K2WvqKCdk956l2wrj1aYcvlGCA==
X-Received: by 2002:a17:906:780f:: with SMTP id u15mr974961ejm.259.1598608277965;
        Fri, 28 Aug 2020 02:51:17 -0700 (PDT)
Received: from pi3 ([194.230.155.216])
        by smtp.googlemail.com with ESMTPSA id dk28sm565457edb.90.2020.08.28.02.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2020 02:51:17 -0700 (PDT)
Date:   Fri, 28 Aug 2020 11:51:15 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: dtschema v2020.08.1 json.decoder.JSONDecodeError error
Message-ID: <20200828095115.GA18030@pi3>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

I am trying dt_bindings_check with on top of next-20200826 with dtschema
v2020.08.01 and got errors on all schemas:

=======
Traceback (most recent call last):
  File "/home/krzk/.local/lib/python3.5/site-packages/jsonschema/validators.py", line 777, in resolve_from_url
    document = self.resolve_remote(url)
  File "/home/krzk/.local/lib/python3.5/site-packages/jsonschema/validators.py", line 860, in resolve_remote
    result = requests.get(uri).json()
  File "/home/krzk/.local/lib/python3.5/site-packages/requests/models.py", line 897, in json
    return complexjson.loads(self.text, **kwargs)
  File "/usr/lib/python3.5/json/__init__.py", line 319, in loads
    return _default_decoder.decode(s)
  File "/usr/lib/python3.5/json/decoder.py", line 339, in decode
  DTEX    Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.example.dts
    obj, end = self.raw_decode(s, idx=_w(s, 0).end())
  File "/usr/lib/python3.5/json/decoder.py", line 357, in raw_decode
    raise JSONDecodeError("Expecting value", s, err.value) from None
json.decoder.JSONDecodeError: Expecting value: line 1 column 1 (char 0)

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/home/krzk/.local/bin/dt-doc-validate", line 67, in <module>
    ret = check_doc(f)
  File "/home/krzk/.local/bin/dt-doc-validate", line 33, in check_doc
    for error in sorted(dtschema.DTValidator.iter_schema_errors(testtree), key=lambda e: e.linecol):
  File "/home/krzk/.local/lib/python3.5/site-packages/dtschema/lib.py", line 663, in iter_schema_errors
    meta_schema = cls.resolver.resolve_from_url(schema['$schema'])
  File "/home/krzk/.local/lib/python3.5/site-packages/jsonschema/validators.py", line 779, in resolve_from_url
    raise exceptions.RefResolutionError(exc)
jsonschema.exceptions.RefResolutionError: Expecting value: line 1 column 1 (char 0)
=======


Python v3.5.2
Ubuntu 16.04

Direct dependencies of dtschema updated via pip3.

Any hints?

Best regards,
Krzysztof

